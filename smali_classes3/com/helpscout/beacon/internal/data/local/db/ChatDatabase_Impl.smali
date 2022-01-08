.class public final Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;
.super Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;
.source "SourceFile"


# instance fields
.field private volatile _attachmentDao:Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;

.field private volatile _chatEnvelopeDAO:Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO;

.field private volatile _chatEventDao:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;

.field private volatile _unfurledMediaDao:Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDao;

.field private volatile _userDao:Lcom/helpscout/beacon/internal/data/local/db/UserDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    iput-object p1, p0, Landroidx/room/RoomDatabase;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$700(Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$800(Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public attachmentDao()Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;->_attachmentDao:Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;->_attachmentDao:Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;->_attachmentDao:Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;

    if-nez v0, :cond_1

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;

    invoke-direct {v0, p0}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;->_attachmentDao:Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;

    :cond_1
    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;->_attachmentDao:Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public chatEnvelopeDao()Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;->_chatEnvelopeDAO:Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;->_chatEnvelopeDAO:Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;->_chatEnvelopeDAO:Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO;

    if-nez v0, :cond_1

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;

    invoke-direct {v0, p0}, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;->_chatEnvelopeDAO:Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO;

    :cond_1
    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;->_chatEnvelopeDAO:Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public chatEventDao()Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;->_chatEventDao:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;->_chatEventDao:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;->_chatEventDao:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;

    if-nez v0, :cond_1

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    invoke-direct {v0, p0}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;->_chatEventDao:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;

    :cond_1
    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;->_chatEventDao:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearAllTables()V
    .locals 6

    invoke-super {p0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    invoke-super {p0}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "VACUUM"

    const-string v3, "PRAGMA foreign_keys = TRUE"

    const-string v4, "PRAGMA wal_checkpoint(FULL)"

    if-nez v1, :cond_1

    :try_start_0
    const-string v5, "PRAGMA foreign_keys = FALSE"

    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    invoke-super {p0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    if-eqz v1, :cond_2

    const-string v5, "PRAGMA defer_foreign_keys = TRUE"

    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    const-string v5, "DELETE FROM `Event`"

    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `Chat`"

    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `User`"

    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `Attachment`"

    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `UnfurledMedia`"

    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-super {p0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-nez v1, :cond_3

    invoke-interface {v0, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_3
    invoke-interface {v0, v4}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v5

    invoke-super {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-nez v1, :cond_5

    invoke-interface {v0, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_5
    invoke-interface {v0, v4}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_6
    throw v5
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v3, "User"

    const-string v4, "Event"

    const-string v5, "Attachment"

    const-string v6, "Chat"

    const-string v7, "UnfurledMedia"

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4

    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl$1;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl$1;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;I)V

    const-string v2, "f11c3940bd4ed0ab3a85807232305749"

    const-string v3, "c05edc2c23dc10432f9f796c27c7103e"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public unfurledMediaDao()Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDao;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;->_unfurledMediaDao:Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;->_unfurledMediaDao:Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDao;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;->_unfurledMediaDao:Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDao;

    if-nez v0, :cond_1

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDao_Impl;

    invoke-direct {v0, p0}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;->_unfurledMediaDao:Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDao;

    :cond_1
    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;->_unfurledMediaDao:Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public userDao()Lcom/helpscout/beacon/internal/data/local/db/UserDao;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;->_userDao:Lcom/helpscout/beacon/internal/data/local/db/UserDao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;->_userDao:Lcom/helpscout/beacon/internal/data/local/db/UserDao;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;->_userDao:Lcom/helpscout/beacon/internal/data/local/db/UserDao;

    if-nez v0, :cond_1

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;

    invoke-direct {v0, p0}, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;->_userDao:Lcom/helpscout/beacon/internal/data/local/db/UserDao;

    :cond_1
    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase_Impl;->_userDao:Lcom/helpscout/beacon/internal/data/local/db/UserDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
