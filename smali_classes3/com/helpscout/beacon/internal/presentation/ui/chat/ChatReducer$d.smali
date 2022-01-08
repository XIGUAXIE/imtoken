.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/arch/core/util/Function;


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
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/arch/core/util/Function<",
        "Lcom/helpscout/beacon/a/c/b/a$a;",
        "Lcom/helpscout/common/lifecycle/Event<",
        "+",
        "Lcom/helpscout/beacon/a/c/b/a$a;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$d;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$d;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$d;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$d;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/helpscout/beacon/a/c/b/a$a;)Lcom/helpscout/common/lifecycle/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/a/c/b/a$a;",
            ")",
            "Lcom/helpscout/common/lifecycle/Event<",
            "Lcom/helpscout/beacon/a/c/b/a$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/helpscout/common/lifecycle/Event;

    invoke-direct {v0, p1}, Lcom/helpscout/common/lifecycle/Event;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/a/c/b/a$a;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$d;->a(Lcom/helpscout/beacon/a/c/b/a$a;)Lcom/helpscout/common/lifecycle/Event;

    move-result-object p1

    return-object p1
.end method
