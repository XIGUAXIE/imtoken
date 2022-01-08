.class public final Lcom/helpscout/beacon/internal/data/remote/chat/ApiErrorHandlerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a#\u0010\u0003\u001a\u00028\u0000\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u0002H\u0000\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "",
        "T",
        "Lretrofit2/Response;",
        "getOrThrow",
        "(Lretrofit2/Response;)Ljava/lang/Object;",
        "beacon_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public static final getOrThrow(Lretrofit2/Response;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Response<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;
        }
    .end annotation

    const-string v0, "$this$getOrThrow"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lretrofit2/Response;->code()I

    move-result v0

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lcom/helpscout/beacon/internal/data/remote/chat/ApiErrorHandler;->INSTANCE:Lcom/helpscout/beacon/internal/data/remote/chat/ApiErrorHandler;

    invoke-virtual {v0, p0}, Lcom/helpscout/beacon/internal/data/remote/chat/ApiErrorHandler;->parseError(Lretrofit2/Response;)Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;

    move-result-object p0

    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;

    invoke-direct {v0, p0}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;-><init>(Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;)V

    throw v0
.end method
