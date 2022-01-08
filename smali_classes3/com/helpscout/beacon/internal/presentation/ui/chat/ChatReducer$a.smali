.class public final Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$a;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/CoroutineExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;-><init>(Lcom/helpscout/common/mvi/MviCoroutineConfig;Lcom/helpscout/beacon/a/c/b/a;Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/a/c/b/b;Lcom/helpscout/beacon/a/b/c/b/c;Lcom/helpscout/beacon/a/b/c/b/h;Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService;Lcom/helpscout/beacon/a/c/e/g/e;Lcom/helpscout/beacon/a/c/e/g/k;Lcom/helpscout/beacon/a/c/e/g/q;Lcom/helpscout/beacon/a/c/e/g/p;Lcom/helpscout/beacon/a/c/e/g/n;Lcom/helpscout/beacon/a/c/e/g/u;Lcom/helpscout/beacon/a/c/e/g/f;Lcom/helpscout/beacon/a/c/e/g/h;Lcom/helpscout/beacon/a/c/e/g/b;Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;Lcom/helpscout/beacon/internal/presentation/common/a;Lcom/helpscout/beacon/a/c/e/f/a;Lcom/helpscout/beacon/a/c/e/g/c;Lcom/helpscout/beacon/a/c/e/g/d;Lcom/helpscout/beacon/a/c/e/g/o;Lcom/helpscout/beacon/internal/presentation/common/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext$Key;Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)V
    .locals 0

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-direct {p0, p1}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    return-void
.end method


# virtual methods
.method public handleException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Ljava/lang/Throwable;)V

    return-void
.end method
