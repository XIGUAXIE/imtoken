.class final Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getAvailableAgents$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->getAvailableAgents(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0012\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00010\u0000H\u0096@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;",
        "continuation",
        "",
        "getAvailableAgents",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.helpscout.beacon.internal.data.remote.chat.RemoteChatApiClient"
    f = "RemoteChatApiClient.kt"
    i = {}
    l = {
        0x1a
    }
    m = "getAvailableAgents"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getAvailableAgents$1;->this$0:Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getAvailableAgents$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getAvailableAgents$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getAvailableAgents$1;->label:I

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getAvailableAgents$1;->this$0:Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;

    invoke-virtual {p1, p0}, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->getAvailableAgents(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
