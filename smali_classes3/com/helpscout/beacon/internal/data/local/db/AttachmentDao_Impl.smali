.class public final Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;


# instance fields
.field private final __chatAttachmentStatusConverter:Lcom/helpscout/beacon/internal/data/local/db/ChatAttachmentStatusConverter;

.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfAttachmentDB:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateLocalFromServer:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateLocalUri:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateStatus:Landroidx/room/SharedSQLiteStatement;

.field private final __uriConverter:Lcom/helpscout/beacon/internal/data/local/db/UriConverter;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/UriConverter;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/data/local/db/UriConverter;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__uriConverter:Lcom/helpscout/beacon/internal/data/local/db/UriConverter;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ChatAttachmentStatusConverter;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/data/local/db/ChatAttachmentStatusConverter;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__chatAttachmentStatusConverter:Lcom/helpscout/beacon/internal/data/local/db/ChatAttachmentStatusConverter;

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl$1;-><init>(Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__insertionAdapterOfAttachmentDB:Landroidx/room/EntityInsertionAdapter;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl$2;-><init>(Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__preparedStmtOfUpdateStatus:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl$3;-><init>(Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__preparedStmtOfUpdateLocalUri:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl$4;-><init>(Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__preparedStmtOfUpdateLocalFromServer:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl$5;-><init>(Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl$6;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl$6;-><init>(Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$000(Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;)Lcom/helpscout/beacon/internal/data/local/db/UriConverter;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__uriConverter:Lcom/helpscout/beacon/internal/data/local/db/UriConverter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;)Lcom/helpscout/beacon/internal/data/local/db/ChatAttachmentStatusConverter;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__chatAttachmentStatusConverter:Lcom/helpscout/beacon/internal/data/local/db/ChatAttachmentStatusConverter;

    return-object p0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public deleteAll()V
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw v1
.end method

.method public insertAttachment(Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;)V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__insertionAdapterOfAttachmentDB:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public loadAllAttachmentsFromEvent(Ljava/lang/String;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x1

    const-string v3, "select Attachment.* from Attachment where Attachment.event_id == ?"

    invoke-static {v3, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    if-nez v0, :cond_0

    invoke-virtual {v3, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v2, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object v0, v1, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v1, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "id"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "event_id"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "name"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "url"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "size"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "mime"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "thumbnail_url"

    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "local_uri"

    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "status"

    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v20, v4

    goto :goto_2

    :cond_1
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v20, v14

    :goto_2
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__uriConverter:Lcom/helpscout/beacon/internal/data/local/db/UriConverter;

    invoke-virtual {v15, v14}, Lcom/helpscout/beacon/internal/data/local/db/UriConverter;->toUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__chatAttachmentStatusConverter:Lcom/helpscout/beacon/internal/data/local/db/ChatAttachmentStatusConverter;

    invoke-virtual {v15, v14}, Lcom/helpscout/beacon/internal/data/local/db/ChatAttachmentStatusConverter;->toChatAttachmentStatus(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    move-result-object v24

    new-instance v14, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;

    move-object v15, v14

    invoke-direct/range {v15 .. v24}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v13

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public updateLocalFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__preparedStmtOfUpdateLocalFromServer:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    if-nez p2, :cond_1

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 p1, 0x3

    if-nez p3, :cond_2

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    :cond_2
    invoke-interface {v0, p1, p3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_2
    const/4 p1, 0x4

    if-nez p4, :cond_3

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    :cond_3
    invoke-interface {v0, p1, p4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_3
    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__preparedStmtOfUpdateLocalFromServer:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p2, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__preparedStmtOfUpdateLocalFromServer:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public updateLocalUri(Ljava/lang/String;Landroid/net/Uri;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;)V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__preparedStmtOfUpdateLocalUri:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__uriConverter:Lcom/helpscout/beacon/internal/data/local/db/UriConverter;

    invoke-virtual {v1, p2}, Lcom/helpscout/beacon/internal/data/local/db/UriConverter;->fromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p2, 0x2

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__chatAttachmentStatusConverter:Lcom/helpscout/beacon/internal/data/local/db/ChatAttachmentStatusConverter;

    invoke-virtual {v1, p3}, Lcom/helpscout/beacon/internal/data/local/db/ChatAttachmentStatusConverter;->fromChatAttachmentStatus(Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    invoke-interface {v0, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-interface {v0, p2, p3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 p2, 0x3

    if-nez p1, :cond_2

    invoke-interface {v0, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    :cond_2
    invoke-interface {v0, p2, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_2
    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__preparedStmtOfUpdateLocalUri:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p2, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__preparedStmtOfUpdateLocalUri:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public updateStatus(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;)V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__preparedStmtOfUpdateStatus:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__chatAttachmentStatusConverter:Lcom/helpscout/beacon/internal/data/local/db/ChatAttachmentStatusConverter;

    invoke-virtual {v1, p2}, Lcom/helpscout/beacon/internal/data/local/db/ChatAttachmentStatusConverter;->fromChatAttachmentStatus(Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p2, 0x2

    if-nez p1, :cond_1

    invoke-interface {v0, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-interface {v0, p2, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__preparedStmtOfUpdateStatus:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p2, p0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;->__preparedStmtOfUpdateStatus:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method
