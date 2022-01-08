.class final Lcom/helpscout/beacon/internal/data/remote/c$k;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/data/remote/c;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.helpscout.beacon.internal.data.remote.RemoteApiClient"
    f = "RemoteApiClient.kt"
    i = {}
    l = {
        0xba
    }
    m = "getConversationsCount"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lcom/helpscout/beacon/internal/data/remote/c;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/data/remote/c;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/c$k;->c:Lcom/helpscout/beacon/internal/data/remote/c;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/c$k;->a:Ljava/lang/Object;

    iget p1, p0, Lcom/helpscout/beacon/internal/data/remote/c$k;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/helpscout/beacon/internal/data/remote/c$k;->b:I

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/c$k;->c:Lcom/helpscout/beacon/internal/data/remote/c;

    invoke-virtual {p1, p0}, Lcom/helpscout/beacon/internal/data/remote/c;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
