.class public interface abstract Lcom/helpscout/common/coroutines/DispatcherProvider;
.super Ljava/lang/Object;
.source "DispatcherProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/common/coroutines/DispatcherProvider$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/helpscout/common/coroutines/DispatcherProvider;",
        "",
        "default",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "io",
        "main",
        "unconfined",
        "kotlin-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# virtual methods
.method public abstract default()Lkotlinx/coroutines/CoroutineDispatcher;
.end method

.method public abstract io()Lkotlinx/coroutines/CoroutineDispatcher;
.end method

.method public abstract main()Lkotlinx/coroutines/CoroutineDispatcher;
.end method

.method public abstract unconfined()Lkotlinx/coroutines/CoroutineDispatcher;
.end method
