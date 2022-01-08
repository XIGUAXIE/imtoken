.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;-><init>(Lcom/helpscout/common/mvi/MviCoroutineConfig;Lcom/helpscout/beacon/a/c/b/a;Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/a/c/b/b;Lcom/helpscout/beacon/a/b/c/b/c;Lcom/helpscout/beacon/a/b/c/b/h;Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService;Lcom/helpscout/beacon/a/c/e/g/e;Lcom/helpscout/beacon/a/c/e/g/k;Lcom/helpscout/beacon/a/c/e/g/q;Lcom/helpscout/beacon/a/c/e/g/p;Lcom/helpscout/beacon/a/c/e/g/n;Lcom/helpscout/beacon/a/c/e/g/u;Lcom/helpscout/beacon/a/c/e/g/f;Lcom/helpscout/beacon/a/c/e/g/h;Lcom/helpscout/beacon/a/c/e/g/b;Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;Lcom/helpscout/beacon/internal/presentation/common/a;Lcom/helpscout/beacon/a/c/e/f/a;Lcom/helpscout/beacon/a/c/e/g/c;Lcom/helpscout/beacon/a/c/e/g/d;Lcom/helpscout/beacon/a/c/e/g/o;Lcom/helpscout/beacon/internal/presentation/common/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/helpscout/beacon/a/c/b/a$a;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$c;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/helpscout/beacon/a/c/b/a$a;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$c;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$c;

    invoke-direct {v1, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$c;-><init>(Lcom/helpscout/beacon/a/c/b/a$a;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$c;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-virtual {p1}, Lcom/helpscout/common/mvi/MviReducer;->getLastViewState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    invoke-virtual {v0, v1, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/f;Lcom/helpscout/beacon/internal/presentation/ui/chat/h;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/a/c/b/a$a;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$c;->a(Lcom/helpscout/beacon/a/c/b/a$a;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
