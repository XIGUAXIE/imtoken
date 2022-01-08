.class public final Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfChatEnvelopeDB:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfUpdateAgent:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateMessageCount:Landroidx/room/SharedSQLiteStatement;

.field private final __zonedDateTimeTypeConverter:Lcom/helpscout/beacon/internal/data/local/db/ZonedDateTimeTypeConverter;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ZonedDateTimeTypeConverter;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/data/local/db/ZonedDateTimeTypeConverter;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__zonedDateTimeTypeConverter:Lcom/helpscout/beacon/internal/data/local/db/ZonedDateTimeTypeConverter;

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl$1;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__insertionAdapterOfChatEnvelopeDB:Landroidx/room/EntityInsertionAdapter;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl$2;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__preparedStmtOfUpdateMessageCount:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl$3;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__preparedStmtOfUpdateAgent:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$000(Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;)Lcom/helpscout/beacon/internal/data/local/db/ZonedDateTimeTypeConverter;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__zonedDateTimeTypeConverter:Lcom/helpscout/beacon/internal/data/local/db/ZonedDateTimeTypeConverter;

    return-object p0
.end method


# virtual methods
.method public insert(Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;)V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__insertionAdapterOfChatEnvelopeDB:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public loadChatDB(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x1

    const-string v3, "select * from Chat where id = ?"

    invoke-static {v3, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    if-nez v0, :cond_0

    invoke-virtual {v3, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v2, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object v0, v1, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v1, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "id"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "customer_id"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "agent_id"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "attachmentCount"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "messagesCount"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "unreadMessages"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "created_at"

    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "updated_at"

    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "ended_at"

    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "pusherPresence"

    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "pusherPrivate"

    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    move-object/from16 v20, v4

    goto :goto_2

    :cond_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_1

    :goto_2
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__zonedDateTimeTypeConverter:Lcom/helpscout/beacon/internal/data/local/db/ZonedDateTimeTypeConverter;

    invoke-virtual {v4, v0}, Lcom/helpscout/beacon/internal/data/local/db/ZonedDateTimeTypeConverter;->toOffsetDateTime(Ljava/lang/String;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v24

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__zonedDateTimeTypeConverter:Lcom/helpscout/beacon/internal/data/local/db/ZonedDateTimeTypeConverter;

    invoke-virtual {v4, v0}, Lcom/helpscout/beacon/internal/data/local/db/ZonedDateTimeTypeConverter;->toOffsetDateTime(Ljava/lang/String;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v25

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__zonedDateTimeTypeConverter:Lcom/helpscout/beacon/internal/data/local/db/ZonedDateTimeTypeConverter;

    invoke-virtual {v4, v0}, Lcom/helpscout/beacon/internal/data/local/db/ZonedDateTimeTypeConverter;->toOffsetDateTime(Ljava/lang/String;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v26

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    new-instance v4, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v28}, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;-><init>(Ljava/lang/String;JLjava/lang/Long;IIILorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v4

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public updateAgent(JLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__preparedStmtOfUpdateAgent:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 p1, 0x2

    if-nez p3, :cond_0

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__preparedStmtOfUpdateAgent:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__preparedStmtOfUpdateAgent:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public updateMessageCount(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__preparedStmtOfUpdateMessageCount:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    int-to-long v1, p1

    const/4 p1, 0x1

    invoke-interface {v0, p1, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 p1, 0x2

    if-nez p2, :cond_0

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__preparedStmtOfUpdateMessageCount:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;->__preparedStmtOfUpdateMessageCount:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method
