.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


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
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "+",
        "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$a;

    const-string v2, "it"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$a;-><init>(Ljava/util/List;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-virtual {p1}, Lcom/helpscout/common/mvi/MviReducer;->getLastViewState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    invoke-virtual {v0, v1, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/f;Lcom/helpscout/beacon/internal/presentation/ui/chat/h;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$b;->a(Ljava/util/List;)V

    return-void
.end method
