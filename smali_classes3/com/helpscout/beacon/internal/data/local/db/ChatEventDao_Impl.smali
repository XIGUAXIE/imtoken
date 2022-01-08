.class public final Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;


# instance fields
.field private final __authorTypeTypeConverter:Lcom/helpscout/beacon/internal/data/local/db/AuthorTypeTypeConverter;

.field private final __chatAttachmentStatusConverter:Lcom/helpscout/beacon/internal/data/local/db/ChatAttachmentStatusConverter;

.field private final __chatEventStatusConverter:Lcom/helpscout/beacon/internal/data/local/db/ChatEventStatusConverter;

.field private final __chatEventTypeTypeConverter:Lcom/helpscout/beacon/internal/data/local/db/ChatEventTypeTypeConverter;

.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfChatEventDB:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteAllRows:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteEvent:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateAuthor:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateAuthorForEventsPending:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateIsTypingEvent:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateLastModified:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateStatus:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateStatusAndId:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfChatEventDB:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;",
            ">;"
        }
    .end annotation
.end field

.field private final __uriConverter:Lcom/helpscout/beacon/internal/data/local/db/UriConverter;

.field private final __zonedDateTimeTypeConverter:Lcom/helpscout/beacon/internal/data/local/db/ZonedDateTimeTypeConverter;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ZonedDateTimeTypeConverter;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/data/local/db/ZonedDateTimeTypeConverter;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__zonedDateTimeTypeConverter:Lcom/helpscout/beacon/internal/data/local/db/ZonedDateTimeTypeConverter;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventStatusConverter;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventStatusConverter;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__chatEventStatusConverter:Lcom/helpscout/beacon/internal/data/local/db/ChatEventStatusConverter;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventTypeTypeConverter;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventTypeTypeConverter;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__chatEventTypeTypeConverter:Lcom/helpscout/beacon/internal/data/local/db/ChatEventTypeTypeConverter;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/UriConverter;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/data/local/db/UriConverter;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__uriConverter:Lcom/helpscout/beacon/internal/data/local/db/UriConverter;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ChatAttachmentStatusConverter;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/data/local/db/ChatAttachmentStatusConverter;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__chatAttachmentStatusConverter:Lcom/helpscout/beacon/internal/data/local/db/ChatAttachmentStatusConverter;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/AuthorTypeTypeConverter;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/data/local/db/AuthorTypeTypeConverter;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__authorTypeTypeConverter:Lcom/helpscout/beacon/internal/data/local/db/AuthorTypeTypeConverter;

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$1;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__insertionAdapterOfChatEventDB:Landroidx/room/EntityInsertionAdapter;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$2;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__updateAdapterOfChatEventDB:Landroidx/room/EntityDeletionOrUpdateAdapter;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$3;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__preparedStmtOfUpdateLastModified:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$4;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__preparedStmtOfUpdateStatus:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$5;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__preparedStmtOfUpdateStatusAndId:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$6;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$6;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__preparedStmtOfUpdateAuthor:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$7;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$7;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__preparedStmtOfUpdateAuthorForEventsPending:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$8;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$8;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__preparedStmtOfUpdateIsTypingEvent:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$9;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$9;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__preparedStmtOfDeleteEvent:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$10;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$10;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__preparedStmtOfDeleteAllRows:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method private __fetchRelationshipAttachmentAscomHelpscoutBeaconInternalDataLocalDbAttachmentDB(Landroidx/collection/ArrayMap;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "event_id"

    invoke-virtual/range {p1 .. p1}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/ArrayMap;->size()I

    move-result v4

    const/16 v5, 0x3e7

    const/4 v6, 0x0

    if-le v4, v5, :cond_4

    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2, v5}, Landroidx/collection/ArrayMap;-><init>(I)V

    invoke-virtual/range {p1 .. p1}, Landroidx/collection/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    const/4 v7, 0x0

    :cond_1
    if-ge v4, v3, :cond_2

    invoke-virtual {v0, v4}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v4}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v5, :cond_1

    invoke-direct {v1, v2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__fetchRelationshipAttachmentAscomHelpscoutBeaconInternalDataLocalDbAttachmentDB(Landroidx/collection/ArrayMap;)V

    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2, v5}, Landroidx/collection/ArrayMap;-><init>(I)V

    goto :goto_0

    :cond_2
    if-lez v7, :cond_3

    invoke-direct {v1, v2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__fetchRelationshipAttachmentAscomHelpscoutBeaconInternalDataLocalDbAttachmentDB(Landroidx/collection/ArrayMap;)V

    :cond_3
    return-void

    :cond_4
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SELECT `id`,`event_id`,`name`,`url`,`size`,`mime`,`thumbnail_url`,`local_uri`,`status` FROM `Attachment` WHERE `event_id` IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v4, v5}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_5

    invoke-virtual {v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v5, v7}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    iget-object v3, v1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v5, 0x0

    invoke-static {v3, v4, v6, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    invoke-static {v3, v2}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, -0x1

    if-ne v4, v6, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :cond_7
    :try_start_1
    const-string v7, "id"

    invoke-static {v3, v7}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    invoke-static {v3, v2}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v8, "name"

    invoke-static {v3, v8}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "url"

    invoke-static {v3, v9}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "size"

    invoke-static {v3, v10}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "mime"

    invoke-static {v3, v11}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "thumbnail_url"

    invoke-static {v3, v12}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "local_uri"

    invoke-static {v3, v13}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "status"

    invoke-static {v3, v14}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    :cond_8
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    if-eqz v15, :cond_8

    if-ne v7, v6, :cond_9

    move-object/from16 v18, v5

    goto :goto_4

    :cond_9
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v18, v16

    :goto_4
    if-ne v2, v6, :cond_a

    move-object/from16 v19, v5

    goto :goto_5

    :cond_a
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v19, v16

    :goto_5
    if-ne v8, v6, :cond_b

    move-object/from16 v20, v5

    goto :goto_6

    :cond_b
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v20, v16

    :goto_6
    if-ne v9, v6, :cond_c

    move-object/from16 v21, v5

    goto :goto_7

    :cond_c
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v21, v16

    :goto_7
    if-ne v10, v6, :cond_d

    goto :goto_8

    :cond_d
    invoke-interface {v3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_e

    :goto_8
    move-object/from16 v22, v5

    goto :goto_9

    :cond_e
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v22, v16

    :goto_9
    if-ne v11, v6, :cond_f

    move-object/from16 v23, v5

    goto :goto_a

    :cond_f
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v23, v16

    :goto_a
    if-ne v12, v6, :cond_10

    move-object/from16 v24, v5

    goto :goto_b

    :cond_10
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v24, v16

    :goto_b
    if-ne v13, v6, :cond_11

    :goto_c
    move-object/from16 v25, v5

    const/4 v5, -0x1

    goto :goto_d

    :cond_11
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__uriConverter:Lcom/helpscout/beacon/internal/data/local/db/UriConverter;

    invoke-virtual {v6, v5}, Lcom/helpscout/beacon/internal/data/local/db/UriConverter;->toUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_c

    :goto_d
    if-ne v14, v5, :cond_12

    const/16 v26, 0x0

    goto :goto_e

    :cond_12
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v5, v1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__chatAttachmentStatusConverter:Lcom/helpscout/beacon/internal/data/local/db/ChatAttachmentStatusConverter;

    invoke-virtual {v5, v6}, Lcom/helpscout/beacon/internal/data/local/db/ChatAttachmentStatusConverter;->toChatAttachmentStatus(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    move-result-object v5

    move-object/from16 v26, v5

    :goto_e
    new-instance v5, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;

    move-object/from16 v17, v5

    invoke-direct/range {v17 .. v26}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;)V

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    const/4 v6, -0x1

    goto/16 :goto_3

    :cond_13
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private __fetchRelationshipUnfurledMediaAscomHelpscoutBeaconInternalDataLocalDbUnfurledMediaDB(Landroidx/collection/ArrayMap;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "event_id"

    invoke-virtual/range {p1 .. p1}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/ArrayMap;->size()I

    move-result v4

    const/16 v5, 0x3e7

    const/4 v6, 0x0

    if-le v4, v5, :cond_4

    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2, v5}, Landroidx/collection/ArrayMap;-><init>(I)V

    invoke-virtual/range {p1 .. p1}, Landroidx/collection/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    const/4 v7, 0x0

    :cond_1
    if-ge v4, v3, :cond_2

    invoke-virtual {v0, v4}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v4}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v5, :cond_1

    invoke-direct {v1, v2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__fetchRelationshipUnfurledMediaAscomHelpscoutBeaconInternalDataLocalDbUnfurledMediaDB(Landroidx/collection/ArrayMap;)V

    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2, v5}, Landroidx/collection/ArrayMap;-><init>(I)V

    goto :goto_0

    :cond_2
    if-lez v7, :cond_3

    invoke-direct {v1, v2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__fetchRelationshipUnfurledMediaAscomHelpscoutBeaconInternalDataLocalDbUnfurledMediaDB(Landroidx/collection/ArrayMap;)V

    :cond_3
    return-void

    :cond_4
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SELECT `event_id`,`url`,`type`,`title`,`description`,`thumbnailUrl`,`mime`,`html` FROM `UnfurledMedia` WHERE `event_id` IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v4, v5}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_5

    invoke-virtual {v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v5, v7}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    iget-object v3, v1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v5, 0x0

    invoke-static {v3, v4, v6, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    invoke-static {v3, v2}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, -0x1

    if-ne v4, v6, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :cond_7
    :try_start_1
    invoke-static {v3, v2}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v7, "url"

    invoke-static {v3, v7}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "type"

    invoke-static {v3, v8}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "title"

    invoke-static {v3, v9}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "description"

    invoke-static {v3, v10}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "thumbnailUrl"

    invoke-static {v3, v11}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "mime"

    invoke-static {v3, v12}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "html"

    invoke-static {v3, v13}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    :cond_8
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    if-eqz v14, :cond_8

    if-ne v2, v6, :cond_9

    move-object/from16 v17, v5

    goto :goto_4

    :cond_9
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v15

    :goto_4
    if-ne v7, v6, :cond_a

    move-object/from16 v18, v5

    goto :goto_5

    :cond_a
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v15

    :goto_5
    if-ne v8, v6, :cond_b

    move-object/from16 v19, v5

    goto :goto_6

    :cond_b
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v15

    :goto_6
    if-ne v9, v6, :cond_c

    move-object/from16 v20, v5

    goto :goto_7

    :cond_c
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v20, v15

    :goto_7
    if-ne v10, v6, :cond_d

    move-object/from16 v21, v5

    goto :goto_8

    :cond_d
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v21, v15

    :goto_8
    if-ne v11, v6, :cond_e

    move-object/from16 v22, v5

    goto :goto_9

    :cond_e
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v22, v15

    :goto_9
    if-ne v12, v6, :cond_f

    move-object/from16 v23, v5

    goto :goto_a

    :cond_f
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v23, v15

    :goto_a
    if-ne v13, v6, :cond_10

    move-object/from16 v24, v5

    goto :goto_b

    :cond_10
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v24, v15

    :goto_b
    new-instance v15, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;

    move-object/from16 v16, v15

    invoke-direct/range {v16 .. v24}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_11
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static synthetic access$000(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Lcom/helpscout/beacon/internal/data/local/db/ZonedDateTimeTypeConverter;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__zonedDateTimeTypeConverter:Lcom/helpscout/beacon/internal/data/local/db/ZonedDateTimeTypeConverter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Lcom/helpscout/beacon/internal/data/local/db/ChatEventStatusConverter;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__chatEventStatusConverter:Lcom/helpscout/beacon/internal/data/local/db/ChatEventStatusConverter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__preparedStmtOfUpdateAuthorForEventsPending:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__preparedStmtOfUpdateIsTypingEvent:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__preparedStmtOfDeleteEvent:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__preparedStmtOfDeleteAllRows:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Landroidx/collection/ArrayMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__fetchRelationshipAttachmentAscomHelpscoutBeaconInternalDataLocalDbAttachmentDB(Landroidx/collection/ArrayMap;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Landroidx/collection/ArrayMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__fetchRelationshipUnfurledMediaAscomHelpscoutBeaconInternalDataLocalDbUnfurledMediaDB(Landroidx/collection/ArrayMap;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Lcom/helpscout/beacon/internal/data/local/db/AuthorTypeTypeConverter;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__authorTypeTypeConverter:Lcom/helpscout/beacon/internal/data/local/db/AuthorTypeTypeConverter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Lcom/helpscout/beacon/internal/data/local/db/ChatEventTypeTypeConverter;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__chatEventTypeTypeConverter:Lcom/helpscout/beacon/internal/data/local/db/ChatEventTypeTypeConverter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static synthetic access$400(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__insertionAdapterOfChatEventDB:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__updateAdapterOfChatEventDB:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__preparedStmtOfUpdateLastModified:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$700(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__preparedStmtOfUpdateStatus:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$800(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__preparedStmtOfUpdateStatusAndId:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$900(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__preparedStmtOfUpdateAuthor:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method


# virtual methods
.method public countSendOrReceivedMessagesNotFromHelpbot(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x4

    const-string v1, "select COUNT(id) from Event where type = ? and (status=? or status=?) and author_id != ?"

    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__chatEventTypeTypeConverter:Lcom/helpscout/beacon/internal/data/local/db/ChatEventTypeTypeConverter;

    invoke-virtual {v2, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventTypeTypeConverter;->fromChatEventType(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__chatEventStatusConverter:Lcom/helpscout/beacon/internal/data/local/db/ChatEventStatusConverter;

    invoke-virtual {v2, p2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventStatusConverter;->fromChatEventStatus(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 p1, 0x3

    iget-object p2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__chatEventStatusConverter:Lcom/helpscout/beacon/internal/data/local/db/ChatEventStatusConverter;

    invoke-virtual {p2, p3}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventStatusConverter;->fromChatEventStatus(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-virtual {v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_2
    invoke-virtual {v1, v0, p4, p5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance p2, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$26;

    invoke-direct {p2, p0, v1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$26;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 p3, 0x0

    invoke-static {p1, p3, p2, p6}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public countWithId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "select COUNT(id) from Event where id = ?"

    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    if-nez p1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$25;

    invoke-direct {v0, p0, v1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$25;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deleteAllRows(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$21;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$21;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deleteEvent(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$20;

    invoke-direct {v1, p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$20;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getEventWithAuthor(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "select Event.*, User.id as user_id, User.displayName as user_displayName, User.initials as user_initials, User.type as user_type, User.photo as user_photo from Event LEFT OUTER JOIN User ON Event.author_id = User.id where Event.id = ?"

    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    if-nez p1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$23;

    invoke-direct {v0, p0, v1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$23;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$11;

    invoke-direct {v1, p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$11;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public loadAllChatEvents(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "select * from Event"

    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v3, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$24;

    invoke-direct {v3, p0, v1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$24;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v2, v0, v3, p1}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public loadChatEventsByStatus(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "select  Event.* from Event where status = ?"

    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__chatEventStatusConverter:Lcom/helpscout/beacon/internal/data/local/db/ChatEventStatusConverter;

    invoke-virtual {v2, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventStatusConverter;->fromChatEventStatus(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$27;

    invoke-direct {v0, p0, v1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$27;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public observeChatEventsWithAuthor()Landroidx/lifecycle/LiveData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "select Event.*, User.id as user_id, User.displayName as user_displayName, User.initials as user_initials, User.type as user_type, User.photo as user_photo from Event LEFT OUTER JOIN User ON Event.author_id = User.id ORDER BY datetime(Event.created_at)"

    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v2

    const-string v3, "Attachment"

    const-string v4, "UnfurledMedia"

    const-string v5, "Event"

    const-string v6, "User"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$22;

    invoke-direct {v4, p0, v1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$22;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v2, v3, v0, v4}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$12;

    invoke-direct {v1, p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$12;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateAuthor(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$17;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$17;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;JLjava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p4}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateAuthorForEventsPending(JLcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$18;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$18;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;JLcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p4}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateIsTypingEvent(Ljava/lang/String;Ljava/lang/String;Lorg/threeten/bp/OffsetDateTime;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/OffsetDateTime;",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v9, p0

    iget-object v10, v9, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v11, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$19;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$19;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Ljava/lang/String;Ljava/lang/String;Lorg/threeten/bp/OffsetDateTime;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;ZLjava/lang/String;)V

    const/4 v0, 0x1

    move-object/from16 v1, p8

    invoke-static {v10, v0, v11, v1}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public updateLastModified(Ljava/lang/String;Lorg/threeten/bp/OffsetDateTime;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/OffsetDateTime;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$14;

    invoke-direct {v1, p0, p2, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$14;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Lorg/threeten/bp/OffsetDateTime;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateStatus(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$15;

    invoke-direct {v1, p0, p2, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$15;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateStatusAndId(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$16;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$16;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p4}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public upsert(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$13;

    invoke-direct {v1, p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$13;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;)V

    invoke-static {v0, v1, p2}, Landroidx/room/RoomDatabaseKt;->withTransaction(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
