.class Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->updateAuthor(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.field final synthetic val$authorId:J

.field final synthetic val$eventId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$17;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    iput-wide p2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$17;->val$authorId:J

    iput-object p4, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$17;->val$eventId:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$17;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->access$900(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    iget-wide v1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$17;->val$authorId:J

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$17;->val$eventId:Ljava/lang/String;

    const/4 v2, 0x2

    if-nez v1, :cond_0

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$17;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    invoke-static {v1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->access$300(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$17;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    invoke-static {v2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->access$300(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$17;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    invoke-static {v2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->access$300(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$17;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    invoke-static {v2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->access$900(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$17;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    invoke-static {v2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->access$300(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$17;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    invoke-static {v2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->access$900(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;)Landroidx/room/SharedSQLiteStatement;

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

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$17;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
