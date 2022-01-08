.class final Lcom/helpscout/beacon/a/c/e/b$f;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/a/c/e/b;->a(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.helpscout.beacon.internal.domain.usecase.HomeInitUseCase"
    f = "HomeInitUseCase.kt"
    i = {
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
        0x27,
        0x2c,
        0x2d,
        0x36,
        0x38,
        0x39
    }
    m = "invoke"
    n = {
        "this",
        "askTabSelectedOverride",
        "this",
        "config",
        "askTabSelectedOverride",
        "this",
        "config",
        "askTabSelectedOverride"
    }
    s = {
        "L$0",
        "Z$0",
        "L$0",
        "L$1",
        "Z$0",
        "L$0",
        "L$1",
        "Z$0"
    }
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lcom/helpscout/beacon/a/c/e/b;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field f:Z


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/a/c/e/b;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/b$f;->c:Lcom/helpscout/beacon/a/c/e/b;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/b$f;->a:Ljava/lang/Object;

    iget p1, p0, Lcom/helpscout/beacon/a/c/e/b$f;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/helpscout/beacon/a/c/e/b$f;->b:I

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/b$f;->c:Lcom/helpscout/beacon/a/c/e/b;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Lcom/helpscout/beacon/a/c/e/b;->a(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
