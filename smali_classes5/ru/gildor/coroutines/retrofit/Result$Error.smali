.class public final Lru/gildor/coroutines/retrofit/Result$Error;
.super Lru/gildor/coroutines/retrofit/Result;
.source "Result.kt"

# interfaces
.implements Lru/gildor/coroutines/retrofit/ErrorResult;
.implements Lru/gildor/coroutines/retrofit/ResponseResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/gildor/coroutines/retrofit/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Error"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004B\u0015\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u000e\u001a\u00020\u000fH\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lru/gildor/coroutines/retrofit/Result$Error;",
        "Lru/gildor/coroutines/retrofit/Result;",
        "",
        "Lru/gildor/coroutines/retrofit/ErrorResult;",
        "Lru/gildor/coroutines/retrofit/ResponseResult;",
        "exception",
        "Lretrofit2/HttpException;",
        "response",
        "Lokhttp3/Response;",
        "(Lretrofit2/HttpException;Lokhttp3/Response;)V",
        "getException",
        "()Lretrofit2/HttpException;",
        "getResponse",
        "()Lokhttp3/Response;",
        "toString",
        "",
        "kotlin-coroutines-retrofit"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private final exception:Lretrofit2/HttpException;

.field private final response:Lokhttp3/Response;


# direct methods
.method public constructor <init>(Lretrofit2/HttpException;Lokhttp3/Response;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, v0}, Lru/gildor/coroutines/retrofit/Result;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lru/gildor/coroutines/retrofit/Result$Error;->exception:Lretrofit2/HttpException;

    iput-object p2, p0, Lru/gildor/coroutines/retrofit/Result$Error;->response:Lokhttp3/Response;

    return-void
.end method


# virtual methods
.method public bridge synthetic getException()Ljava/lang/Throwable;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lru/gildor/coroutines/retrofit/Result$Error;->getException()Lretrofit2/HttpException;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public getException()Lretrofit2/HttpException;
    .locals 1

    .line 41
    iget-object v0, p0, Lru/gildor/coroutines/retrofit/Result$Error;->exception:Lretrofit2/HttpException;

    return-object v0
.end method

.method public getResponse()Lokhttp3/Response;
    .locals 1

    .line 42
    iget-object v0, p0, Lru/gildor/coroutines/retrofit/Result$Error;->response:Lokhttp3/Response;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result.Error{exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lru/gildor/coroutines/retrofit/Result$Error;->getException()Lretrofit2/HttpException;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
