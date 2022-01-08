.class public final Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {}
    d2 = {}
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public static synthetic countSendOrReceivedMessagesNotFromHelpbot$default(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    if-nez p8, :cond_4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    sget-object p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;->message:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    sget-object p2, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->RECEIVED:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    :cond_1
    move-object v2, p2

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    sget-object p3, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->SENT:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    :cond_2
    move-object v3, p3

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    const-wide/16 p4, 0x1

    :cond_3
    move-wide v4, p4

    move-object v0, p0

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;->countSendOrReceivedMessagesNotFromHelpbot(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: countSendOrReceivedMessagesNotFromHelpbot"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic updateAuthorForEventsPending$default(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;JLcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    sget-object p3, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->WAITING_CHAT_CREATION:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;->updateAuthorForEventsPending(JLcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateAuthorForEventsPending"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic updateIsTypingEvent$default(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;Ljava/lang/String;Ljava/lang/String;Lorg/threeten/bp/OffsetDateTime;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Ljava/lang/String;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 10

    if-nez p10, :cond_1

    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    move/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;->updateIsTypingEvent(Ljava/lang/String;Ljava/lang/String;Lorg/threeten/bp/OffsetDateTime;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: updateIsTypingEvent"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic updateLastModified$default(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;Ljava/lang/String;Lorg/threeten/bp/OffsetDateTime;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    invoke-static {}, Lcom/helpscout/beacon/internal/data/extensions/DateExtensionsKt;->nowUTC()Lorg/threeten/bp/OffsetDateTime;

    move-result-object p2

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;->updateLastModified(Ljava/lang/String;Lorg/threeten/bp/OffsetDateTime;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateLastModified"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static upsert(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$upsert$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$upsert$1;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$upsert$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$upsert$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$upsert$1;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$upsert$1;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$upsert$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$upsert$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$upsert$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;

    iget-object p0, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$upsert$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    iput-object p0, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$upsert$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$upsert$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$upsert$1;->label:I

    invoke-interface {p0, p1, v0}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;->insert(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p0, v1, :cond_4

    return-object v1

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x0

    iput-object p2, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$upsert$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$upsert$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$upsert$1;->label:I

    invoke-interface {p0, p1, v0}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;->update(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
