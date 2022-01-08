.class final Lcom/helpscout/beacon/a/c/e/g/l$c;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/a/c/e/g/l;->a(Lcom/helpscout/beacon/a/c/e/g/l$a;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.helpscout.beacon.internal.domain.usecase.chat.RateChatUseCase"
    f = "RateChatUseCase.kt"
    i = {}
    l = {
        0x10
    }
    m = "invoke"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lcom/helpscout/beacon/a/c/e/g/l;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/a/c/e/g/l;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/l$c;->c:Lcom/helpscout/beacon/a/c/e/g/l;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/l$c;->a:Ljava/lang/Object;

    iget p1, p0, Lcom/helpscout/beacon/a/c/e/g/l$c;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/helpscout/beacon/a/c/e/g/l$c;->b:I

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/l$c;->c:Lcom/helpscout/beacon/a/c/e/g/l;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lcom/helpscout/beacon/a/c/e/g/l;->a(Lcom/helpscout/beacon/a/c/e/g/l$a;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
