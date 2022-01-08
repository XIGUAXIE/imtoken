.class public final Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$a;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/CoroutineExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;-><init>(Lcom/helpscout/beacon/a/c/e/e/a;Lcom/helpscout/beacon/a/c/e/e/c;Lcom/helpscout/beacon/internal/presentation/common/g;Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/internal/presentation/ui/article/f;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext$Key;Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;)V
    .locals 0

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;

    invoke-direct {p0, p1}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    return-void
.end method


# virtual methods
.method public handleException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CoRoutineExceptionHandler Caught "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;

    invoke-direct {v0, p2}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    return-void
.end method
