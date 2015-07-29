package im.actor.server.persist

import scala.concurrent.ExecutionContext

import com.github.tototoshi.slick.PostgresJodaSupport._
import org.joda.time.DateTime
import slick.dbio.Effect.Write
import slick.driver.PostgresDriver.api._
import slick.profile.FixedSqlAction

import im.actor.server.models

class AuthIdTable(tag: Tag) extends Table[models.AuthId](tag, "auth_ids") {
  def id = column[Long]("id", O.PrimaryKey)

  def userId = column[Option[Int]]("user_id")

  def publicKeyHash = column[Option[Long]]("public_key_hash")

  def deletedAt = column[Option[DateTime]]("deleted_at")

  def * = (id, userId, publicKeyHash) <> (models.AuthId.tupled, models.AuthId.unapply)
}

object AuthId {
  val authIds = TableQuery[AuthIdTable]

  val activeAuthIds = authIds.filter(_.deletedAt.isEmpty)
  val activeAuthIdsCompiled = Compiled(activeAuthIds)

  def create(authId: Long, userId: Option[Int], publicKeyHash: Option[Long]) =
    authIds += models.AuthId(authId, userId, publicKeyHash)

  def byAuthIdNotDeleted(authId: Rep[Long]) =
    activeAuthIds.filter(a ⇒ a.id === authId)
  val byAuthIdNotDeletedCompiled = Compiled(byAuthIdNotDeleted _)

  val userIdByAuthIdNotDeletedCompiled = Compiled(
    (authId: Rep[Long]) ⇒
      byAuthIdNotDeleted(authId).map(_.userId)
  )

  def activeByUserId(userId: Rep[Int]) = activeAuthIds.filter(_.userId === userId)

  val activeByUserIdCompiled = Compiled((userId: Rep[Int]) ⇒ activeByUserId(userId))
  val activeIdByUserIdCompiled = Compiled((userId: Rep[Int]) ⇒ activeByUserId(userId) map (_.id))

  def activeIdByUserIds(userIds: Set[Int]) = activeAuthIds.filter(_.userId inSetBind userIds).map(_.id)

  def setUserData(authId: Long, userId: Int) =
    sql"UPDATE auth_ids SET user_id = $userId WHERE id = $authId AND deleted_at IS NOT NULL".as[Int].head

  def find(authId: Long) =
    byAuthIdNotDeletedCompiled(authId).result.headOption

  def findUserId(authId: Long)(implicit ec: ExecutionContext) =
    userIdByAuthIdNotDeletedCompiled(authId).result.headOption map (_.flatten)

  def findByUserId(userId: Int) =
    activeByUserIdCompiled(userId).result

  def findIdByUserId(userId: Int) =
    activeIdByUserIdCompiled(userId).result

  def findIdByUserIds(userIds: Set[Int]) =
    activeIdByUserIds(userIds).result

  def delete(id: Long) =
    activeAuthIds.filter(_.id === id).map(_.deletedAt).update(Some(new DateTime))
}
