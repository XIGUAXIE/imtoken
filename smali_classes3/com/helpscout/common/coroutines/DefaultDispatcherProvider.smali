.class public final Lcom/helpscout/common/coroutines/DefaultDispatcherProvider;
.super Ljava/lang/Object;
.source "DispatcherProvider.kt"

# interfaces
.implements Lcom/helpscout/common/coroutines/DispatcherProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/helpscout/common/coroutines/DefaultDispatcherProvider;",
        "Lcom/helpscout/common/coroutines/DispatcherProvider;",
        "()V",
        "kotlin-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public default()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 18
    invoke-static {p0}, Lcom/helpscout/common/coroutines/DispatcherProvider$DefaultImpls;->default(Lcom/helpscout/common/coroutines/DispatcherProvider;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public io()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 18
    invoke-static {p0}, Lcom/helpscout/common/coroutines/DispatcherProvider$DefaultImpls;->io(Lcom/helpscout/common/coroutines/DispatcherProvider;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public main()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 18
    invoke-static {p0}, Lcom/helpscout/common/coroutines/DispatcherProvider$DefaultImpls;->main(Lcom/helpscout/common/coroutines/DispatcherProvider;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public unconfined()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 18
    invoke-static {p0}, Lcom/helpscout/common/coroutines/DispatcherProvider$DefaultImpls;->unconfined(Lcom/helpscout/common/coroutines/DispatcherProvider;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method
