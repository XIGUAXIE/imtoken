.class public final Lcom/helpscout/common/coroutines/DispatcherProvider$DefaultImpls;
.super Ljava/lang/Object;
.source "DispatcherProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/common/coroutines/DispatcherProvider;
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
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public static default(Lcom/helpscout/common/coroutines/DispatcherProvider;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 0

    .line 13
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public static io(Lcom/helpscout/common/coroutines/DispatcherProvider;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 0

    .line 14
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public static main(Lcom/helpscout/common/coroutines/DispatcherProvider;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 0

    .line 12
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/CoroutineDispatcher;

    return-object p0
.end method

.method public static unconfined(Lcom/helpscout/common/coroutines/DispatcherProvider;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 0

    .line 15
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    return-object p0
.end method
