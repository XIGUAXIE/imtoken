.class public final Lru/gildor/coroutines/retrofit/ResultKt;
.super Ljava/lang/Object;
.source "Result.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u001a\'\u0010\u0000\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0012\u0004\u0012\u0002H\u00010\u00032\u0006\u0010\u0004\u001a\u0002H\u0001\u00a2\u0006\u0002\u0010\u0005\u001a!\u0010\u0006\u001a\u0004\u0018\u0001H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0012\u0004\u0012\u0002H\u00010\u0003\u00a2\u0006\u0002\u0010\u0007\u001a+\u0010\u0008\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0012\u0004\u0012\u0002H\u00010\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "getOrDefault",
        "T",
        "",
        "Lru/gildor/coroutines/retrofit/Result;",
        "default",
        "(Lru/gildor/coroutines/retrofit/Result;Ljava/lang/Object;)Ljava/lang/Object;",
        "getOrNull",
        "(Lru/gildor/coroutines/retrofit/Result;)Ljava/lang/Object;",
        "getOrThrow",
        "throwable",
        "",
        "(Lru/gildor/coroutines/retrofit/Result;Ljava/lang/Throwable;)Ljava/lang/Object;",
        "kotlin-coroutines-retrofit"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# direct methods
.method public static final getOrDefault(Lru/gildor/coroutines/retrofit/Result;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lru/gildor/coroutines/retrofit/Result<",
            "+TT;>;TT;)TT;"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "default"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-static {p0}, Lru/gildor/coroutines/retrofit/ResultKt;->getOrNull(Lru/gildor/coroutines/retrofit/Result;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object p1, p0

    :cond_0
    return-object p1
.end method

.method public static final getOrNull(Lru/gildor/coroutines/retrofit/Result;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lru/gildor/coroutines/retrofit/Result<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    instance-of v0, p0, Lru/gildor/coroutines/retrofit/Result$Ok;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p0, v1

    :cond_0
    check-cast p0, Lru/gildor/coroutines/retrofit/Result$Ok;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lru/gildor/coroutines/retrofit/Result$Ok;->getValue()Ljava/lang/Object;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public static final getOrThrow(Lru/gildor/coroutines/retrofit/Result;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lru/gildor/coroutines/retrofit/Result<",
            "+TT;>;",
            "Ljava/lang/Throwable;",
            ")TT;"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    instance-of v0, p0, Lru/gildor/coroutines/retrofit/Result$Ok;

    if-eqz v0, :cond_0

    check-cast p0, Lru/gildor/coroutines/retrofit/Result$Ok;

    invoke-virtual {p0}, Lru/gildor/coroutines/retrofit/Result$Ok;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 89
    :cond_0
    instance-of v0, p0, Lru/gildor/coroutines/retrofit/Result$Error;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p0, Lru/gildor/coroutines/retrofit/Result$Error;

    invoke-virtual {p0}, Lru/gildor/coroutines/retrofit/Result$Error;->getException()Lretrofit2/HttpException;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/Throwable;

    :goto_0
    throw p1

    .line 90
    :cond_2
    instance-of v0, p0, Lru/gildor/coroutines/retrofit/Result$Exception;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    check-cast p0, Lru/gildor/coroutines/retrofit/Result$Exception;

    invoke-virtual {p0}, Lru/gildor/coroutines/retrofit/Result$Exception;->getException()Ljava/lang/Throwable;

    move-result-object p1

    :goto_1
    throw p1

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static synthetic getOrThrow$default(Lru/gildor/coroutines/retrofit/Result;Ljava/lang/Throwable;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 86
    check-cast p1, Ljava/lang/Throwable;

    :cond_0
    invoke-static {p0, p1}, Lru/gildor/coroutines/retrofit/ResultKt;->getOrThrow(Lru/gildor/coroutines/retrofit/Result;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
