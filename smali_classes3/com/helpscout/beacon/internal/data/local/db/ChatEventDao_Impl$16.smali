.class Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->updateStatusAndId(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

.field final synthetic val$oldId:Ljava/lang/String;

.field final synthetic val$serverEventId:Ljava/lang/String;

.field final synthetic val$status:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$16;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$16;->val$serverEventId:Ljava/lang/String;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$16;->val$status:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    iput-object p4, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$16;->val$oldId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$16;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->access$800(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$16;->val$serverEventId:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$16;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    invoke-static {v2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->access$100(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Lcom/helpscout/beacon/internal/data/local/db/ChatEventStatusConverter;

    move-result-object v2

    iget-object v3, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$16;->val$status:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    invoke-virtual {v2, v3}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventStatusConverter;->fromChatEventStatus(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-interface {v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$16;->val$oldId:Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    :cond_2
    invoke-interface {v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_2
    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$16;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    invoke-static {v1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->access$300(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$16;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    invoke-static {v2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->access$300(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$16;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    invoke-static {v2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->access$300(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$16;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    invoke-static {v2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->access$800(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$16;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    invoke-static {v2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->access$300(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$16;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    invoke-static {v2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->access$800(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$16;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
