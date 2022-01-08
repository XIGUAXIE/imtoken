.class public final Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherAuthorizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pusher/client/Authorizer;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\r\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ#\u0010\u000b\u001a\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\r\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u001c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000f8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherAuthorizer;",
        "Lcom/pusher/client/Authorizer;",
        "",
        "channelName",
        "",
        "addAuthErrorFlagIfNeeded",
        "(Ljava/lang/String;)V",
        "",
        "hasAuthErrorOccurred",
        "()Z",
        "socketId",
        "authorize",
        "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
        "resetAuthErrorFlags",
        "()V",
        "",
        "authErrors",
        "Ljava/util/List;",
        "Lcom/helpscout/beacon/a/c/e/g/w/e;",
        "realtimeAuthBlockingUseCase",
        "Lcom/helpscout/beacon/a/c/e/g/w/e;",
        "<init>",
        "(Lcom/helpscout/beacon/a/c/e/g/w/e;)V",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final authErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final realtimeAuthBlockingUseCase:Lcom/helpscout/beacon/a/c/e/g/w/e;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/c/e/g/w/e;)V
    .locals 1

    const-string v0, "realtimeAuthBlockingUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherAuthorizer;->realtimeAuthBlockingUseCase:Lcom/helpscout/beacon/a/c/e/g/w/e;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherAuthorizer;->authErrors:Ljava/util/List;

    return-void
.end method

.method private final addAuthErrorFlagIfNeeded(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get authToken for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherAuthorizer;->authErrors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public authorize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/client/AuthorizationFailureException;
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherAuthorizer;->realtimeAuthBlockingUseCase:Lcom/helpscout/beacon/a/c/e/g/w/e;

    invoke-virtual {v0, p1, p2}, Lcom/helpscout/beacon/a/c/e/g/w/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/helpscout/beacon/a/c/e/g/w/e$a;

    move-result-object p2

    instance-of v0, p2, Lcom/helpscout/beacon/a/c/e/g/w/e$a$b;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/helpscout/beacon/a/c/e/g/w/e$a$b;

    invoke-virtual {p2}, Lcom/helpscout/beacon/a/c/e/g/w/e$a$b;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p2, Lcom/helpscout/beacon/a/c/e/g/w/e$a$a;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherAuthorizer;->addAuthErrorFlagIfNeeded(Ljava/lang/String;)V

    new-instance p1, Lcom/pusher/client/AuthorizationFailureException;

    check-cast p2, Lcom/helpscout/beacon/a/c/e/g/w/e$a$a;

    invoke-virtual {p2}, Lcom/helpscout/beacon/a/c/e/g/w/e$a$a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/pusher/client/AuthorizationFailureException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final hasAuthErrorOccurred()Z
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherAuthorizer;->authErrors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final resetAuthErrorFlags()V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherAuthorizer;->authErrors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
