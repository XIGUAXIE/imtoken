.class final Lcom/helpscout/beacon/a/b/c/b/c$k;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/a/b/c/b/c;->c(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.helpscout.beacon.internal.data.local.chat.ChatEventRepository"
    f = "ChatEventRepository.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x2,
        0x2,
        0x3
    }
    l = {
        0x7c,
        0x7d,
        0x80,
        0x83
    }
    m = "uploadEvent"
    n = {
        "this",
        "event",
        "this",
        "event",
        "this",
        "event",
        "e"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0"
    }
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lcom/helpscout/beacon/a/b/c/b/c;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/a/b/c/b/c;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/a/b/c/b/c$k;->c:Lcom/helpscout/beacon/a/b/c/b/c;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/helpscout/beacon/a/b/c/b/c$k;->a:Ljava/lang/Object;

    iget p1, p0, Lcom/helpscout/beacon/a/b/c/b/c$k;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/helpscout/beacon/a/b/c/b/c$k;->b:I

    iget-object p1, p0, Lcom/helpscout/beacon/a/b/c/b/c$k;->c:Lcom/helpscout/beacon/a/b/c/b/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/helpscout/beacon/a/b/c/b/c;->c(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
