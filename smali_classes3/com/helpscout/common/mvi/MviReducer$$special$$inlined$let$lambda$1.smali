.class public final Lcom/helpscout/common/mvi/MviReducer$$special$$inlined$let$lambda$1;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "CoroutineExceptionHandler.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/common/mvi/MviReducer;-><init>(Lcom/helpscout/common/mvi/MviCoroutineConfig;Lcom/helpscout/common/mvi/MviViewStateStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 MviReducer.kt\ncom/helpscout/common/mvi/MviReducer\n*L\n1#1,110:1\n32#2,6:111\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u00012\u00020\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t\u00b8\u0006\n"
    }
    d2 = {
        "kotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1",
        "Lkotlin/coroutines/AbstractCoroutineContextElement;",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "handleException",
        "",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "exception",
        "",
        "kotlinx-coroutines-core",
        "com/helpscout/common/mvi/MviReducer$$special$$inlined$CoroutineExceptionHandler$1"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $it$inlined:Lcom/helpscout/common/mvi/MviCoroutineExceptionHandler;

.field final synthetic this$0:Lcom/helpscout/common/mvi/MviReducer;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext$Key;Lcom/helpscout/common/mvi/MviCoroutineExceptionHandler;Lcom/helpscout/common/mvi/MviReducer;)V
    .locals 0

    iput-object p2, p0, Lcom/helpscout/common/mvi/MviReducer$$special$$inlined$let$lambda$1;->$it$inlined:Lcom/helpscout/common/mvi/MviCoroutineExceptionHandler;

    iput-object p3, p0, Lcom/helpscout/common/mvi/MviReducer$$special$$inlined$let$lambda$1;->this$0:Lcom/helpscout/common/mvi/MviReducer;

    .line 49
    invoke-direct {p0, p1}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    return-void
.end method


# virtual methods
.method public handleException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/helpscout/common/mvi/MviReducer$$special$$inlined$let$lambda$1;->$it$inlined:Lcom/helpscout/common/mvi/MviCoroutineExceptionHandler;

    .line 112
    iget-object v1, p0, Lcom/helpscout/common/mvi/MviReducer$$special$$inlined$let$lambda$1;->this$0:Lcom/helpscout/common/mvi/MviReducer;

    invoke-virtual {v1}, Lcom/helpscout/common/mvi/MviReducer;->getReducerName()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-interface {v0, v1, p1, p2}, Lcom/helpscout/common/mvi/MviCoroutineExceptionHandler;->handleException(Ljava/lang/String;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    return-void
.end method
