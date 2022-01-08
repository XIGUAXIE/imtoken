.class Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$2;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;)V
    .locals 4

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getBody()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$2;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->access$000(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Lcom/helpscout/beacon/internal/data/local/db/ZonedDateTimeTypeConverter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getCreatedAt()Lorg/threeten/bp/OffsetDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/data/local/db/ZonedDateTimeTypeConverter;->fromOffsetDateTime(Lorg/threeten/bp/OffsetDateTime;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    :cond_2
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$2;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->access$000(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Lcom/helpscout/beacon/internal/data/local/db/ZonedDateTimeTypeConverter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getUpdatedAt()Lorg/threeten/bp/OffsetDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/data/local/db/ZonedDateTimeTypeConverter;->fromOffsetDateTime(Lorg/threeten/bp/OffsetDateTime;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_3

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    :cond_3
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$2;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->access$100(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Lcom/helpscout/beacon/internal/data/local/db/ChatEventStatusConverter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getStatus()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventStatusConverter;->fromChatEventStatus(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_4

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    :cond_4
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_4
    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$2;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->access$200(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Lcom/helpscout/beacon/internal/data/local/db/ChatEventTypeTypeConverter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getType()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventTypeTypeConverter;->fromChatEventType(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_5

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    :cond_5
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_5
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getAuthorId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_6

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    :cond_6
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getAuthorId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    :goto_6
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->isUpdatingATypingEvent()Z

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x8

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_7

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_7

    :cond_7
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_7
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `Event` SET `id` = ?,`body` = ?,`created_at` = ?,`updated_at` = ?,`status` = ?,`type` = ?,`author_id` = ?,`isUpdatingATypingEvent` = ? WHERE `id` = ?"

    return-object v0
.end method
