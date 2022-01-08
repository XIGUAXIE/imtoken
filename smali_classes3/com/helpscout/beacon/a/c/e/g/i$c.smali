.class final Lcom/helpscout/beacon/a/c/e/g/i$c;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/a/c/e/g/i;->a(Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.helpscout.beacon.internal.domain.usecase.chat.InitChatFromCacheUseCase"
    f = "InitChatFromCacheUseCase.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x25,
        0x2c
    }
    m = "loadChatFieldFromCache"
    n = {
        "this",
        "agentId"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lcom/helpscout/beacon/a/c/e/g/i;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/a/c/e/g/i;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/i$c;->c:Lcom/helpscout/beacon/a/c/e/g/i;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/i$c;->a:Ljava/lang/Object;

    iget p1, p0, Lcom/helpscout/beacon/a/c/e/g/i$c;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/helpscout/beacon/a/c/e/g/i$c;->b:I

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/i$c;->c:Lcom/helpscout/beacon/a/c/e/g/i;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/helpscout/beacon/a/c/e/g/i;->a(Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
