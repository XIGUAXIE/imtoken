.class Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->observeChatEventsWithAuthor()Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$22;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$22;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$22;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$22;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->access$300(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$22;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "id"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "body"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "created_at"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "updated_at"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "status"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "type"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "author_id"

    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "isUpdatingATypingEvent"

    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "user_id"

    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "user_displayName"

    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "user_initials"

    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "user_type"

    invoke-static {v2, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "user_photo"

    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    new-instance v4, Landroidx/collection/ArrayMap;

    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    move/from16 v16, v3

    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_2

    move/from16 v17, v15

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    if-nez v18, :cond_0

    move/from16 v18, v14

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v15, v14}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    move/from16 v18, v14

    :goto_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    if-nez v15, :cond_1

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v14, v15}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move/from16 v15, v17

    move/from16 v14, v18

    goto :goto_0

    :cond_2
    move/from16 v18, v14

    move/from16 v17, v15

    const/4 v14, -0x1

    invoke-interface {v2, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v14, v1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$22;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    invoke-static {v14, v4}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->access$1400(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Landroidx/collection/ArrayMap;)V

    iget-object v14, v1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$22;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    invoke-static {v14, v3}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->access$1500(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Landroidx/collection/ArrayMap;)V

    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-nez v15, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v28, v5

    const/4 v5, 0x0

    goto :goto_6

    :cond_4
    :goto_3
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v28, v5

    iget-object v5, v1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$22;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    invoke-static {v5}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->access$000(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Lcom/helpscout/beacon/internal/data/local/db/ZonedDateTimeTypeConverter;

    move-result-object v5

    invoke-virtual {v5, v15}, Lcom/helpscout/beacon/internal/data/local/db/ZonedDateTimeTypeConverter;->toOffsetDateTime(Ljava/lang/String;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v22

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v15, v1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$22;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    invoke-static {v15}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->access$000(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Lcom/helpscout/beacon/internal/data/local/db/ZonedDateTimeTypeConverter;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/helpscout/beacon/internal/data/local/db/ZonedDateTimeTypeConverter;->toOffsetDateTime(Ljava/lang/String;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v23

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v15, v1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$22;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    invoke-static {v15}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->access$100(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Lcom/helpscout/beacon/internal/data/local/db/ChatEventStatusConverter;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventStatusConverter;->toChatEventStatus(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    move-result-object v24

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v15, v1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$22;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    invoke-static {v15}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->access$200(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Lcom/helpscout/beacon/internal/data/local/db/ChatEventTypeTypeConverter;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventTypeTypeConverter;->toChatEventType(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    move-result-object v25

    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v26, 0x0

    goto :goto_4

    :cond_5
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v26, v5

    :goto_4
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_6

    const/16 v27, 0x1

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    const/16 v27, 0x0

    :goto_5
    new-instance v5, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;

    move-object/from16 v19, v5

    invoke-direct/range {v19 .. v27}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Ljava/lang/Long;Z)V

    :goto_6
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_8

    move/from16 v15, v18

    invoke-interface {v2, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_9

    move/from16 v18, v6

    move/from16 v6, v17

    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_a

    move/from16 v17, v7

    move/from16 v7, v16

    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-nez v16, :cond_7

    goto :goto_7

    :cond_7
    move/from16 v26, v6

    move/from16 v16, v8

    const/4 v6, 0x0

    goto :goto_8

    :cond_8
    move/from16 v15, v18

    :cond_9
    move/from16 v18, v6

    move/from16 v6, v17

    :cond_a
    move/from16 v17, v7

    move/from16 v7, v16

    :goto_7
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    move/from16 v16, v8

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v26, v6

    iget-object v6, v1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$22;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    invoke-static {v6}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->access$1600(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Lcom/helpscout/beacon/internal/data/local/db/AuthorTypeTypeConverter;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/helpscout/beacon/internal/data/local/db/AuthorTypeTypeConverter;->toAuthorType(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;

    move-result-object v22

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    new-instance v6, Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    move-object/from16 v19, v6

    invoke-direct/range {v19 .. v25}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;-><init>(JLcom/helpscout/beacon/internal/data/remote/chat/AuthorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_b

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_b
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_c
    move/from16 v19, v0

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;

    invoke-direct {v0, v5, v6}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;Lcom/helpscout/beacon/internal/data/local/db/UserDB;)V

    iput-object v8, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->attachments:Ljava/util/List;

    iput-object v1, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->unfurledMedia:Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v1, p0

    move/from16 v8, v16

    move/from16 v6, v18

    move/from16 v0, v19

    move/from16 v5, v28

    move/from16 v16, v7

    move/from16 v18, v15

    move/from16 v7, v17

    move/from16 v17, v26

    goto/16 :goto_2

    :cond_d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v14

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$22;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
