.class final Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->a(Ljava/lang/String;Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.helpscout.beacon.internal.presentation.ui.conversation.ConversationReducer$downloadThreadAttachment$1"
    f = "ConversationReducer.kt"
    i = {}
    l = {
        0x6f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;Ljava/lang/String;Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$d;->b:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$d;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$d;->d:Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$d;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$d;->b:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$d;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$d;->d:Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$d;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;Ljava/lang/String;Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$d;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$d;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$d;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$d;->b:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->b(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;)Lcom/helpscout/beacon/a/c/e/f/b;

    move-result-object p1

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$d;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$d;->d:Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;

    iput v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$d;->a:I

    invoke-virtual {p1, v1, v3, p0}, Lcom/helpscout/beacon/a/c/e/f/b;->a(Ljava/lang/String;Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/io/File;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$d;->b:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/e$f;

    invoke-direct {v1, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/e$f;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$d;->b:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/e$b;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$d;->d:Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/e$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V

    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
