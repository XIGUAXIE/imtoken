.class public final Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;
.super Ljava/lang/Throwable;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\r\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\u0007J\r\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\t\u0010\u0007J\r\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\n\u0010\u0007J\r\u0010\u000b\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000b\u0010\u0007J\r\u0010\u000c\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000c\u0010\u0007J\r\u0010\r\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\r\u0010\u0007J\r\u0010\u000e\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000e\u0010\u0007J\r\u0010\u000f\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000f\u0010\u0007R\u0019\u0010\u0011\u001a\u00020\u00108\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;",
        "",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "isBadRequest",
        "()Z",
        "isUnauthorized",
        "isForbidden",
        "isMissing",
        "isConflict",
        "isUnprocessableEntityError",
        "isTooManyRequests",
        "isServer",
        "isUnknown",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;",
        "error",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;",
        "getError",
        "()Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;",
        "<init>",
        "(Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;)V",
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
.field private final error:Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;->error:Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;

    return-void
.end method


# virtual methods
.method public final getError()Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;->error:Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;

    return-object v0
.end method

.method public final isBadRequest()Z
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;->error:Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;->getStatus()I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isConflict()Z
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;->error:Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;->getStatus()I

    move-result v0

    const/16 v1, 0x199

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isForbidden()Z
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;->error:Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;->getStatus()I

    move-result v0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isMissing()Z
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;->error:Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;->getStatus()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isServer()Z
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;->error:Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;->getStatus()I

    move-result v0

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isTooManyRequests()Z
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;->error:Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;->getStatus()I

    move-result v0

    const/16 v1, 0x1ad

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isUnauthorized()Z
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;->error:Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;->getStatus()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isUnknown()Z
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;->error:Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isUnprocessableEntityError()Z
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;->error:Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;->getStatus()I

    move-result v0

    const/16 v1, 0x1a6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##### "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;->error:Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " #####"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
