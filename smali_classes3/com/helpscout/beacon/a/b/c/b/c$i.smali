.class final Lcom/helpscout/beacon/a/b/c/b/c$i;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/a/b/c/b/c;->a(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        0x0,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x89,
        0x8d,
        0x8f
    }
    m = "uploadAttachment"
    n = {
        "this",
        "eventId",
        "attachmentApi",
        "this",
        "attachmentApi",
        "updatedEvent",
        "this",
        "attachmentApi",
        "updatedEvent"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lcom/helpscout/beacon/a/b/c/b/c;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field f:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/a/b/c/b/c;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/a/b/c/b/c$i;->c:Lcom/helpscout/beacon/a/b/c/b/c;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/helpscout/beacon/a/b/c/b/c$i;->a:Ljava/lang/Object;

    iget p1, p0, Lcom/helpscout/beacon/a/b/c/b/c$i;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/helpscout/beacon/a/b/c/b/c$i;->b:I

    iget-object p1, p0, Lcom/helpscout/beacon/a/b/c/b/c$i;->c:Lcom/helpscout/beacon/a/b/c/b/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lcom/helpscout/beacon/a/b/c/b/c;->a(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
