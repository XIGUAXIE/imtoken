.class final Lcom/helpscout/beacon/a/c/e/j/a$c;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/a/c/e/j/a;->a(Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;ZZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.helpscout.beacon.internal.domain.usecase.navigate.CustomNavigateUseCase"
    f = "CustomNavigateUseCase.kt"
    i = {}
    l = {
        0x53
    }
    m = "calculateResult"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lcom/helpscout/beacon/a/c/e/j/a;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/a/c/e/j/a;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/j/a$c;->c:Lcom/helpscout/beacon/a/c/e/j/a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/j/a$c;->a:Ljava/lang/Object;

    iget p1, p0, Lcom/helpscout/beacon/a/c/e/j/a$c;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/helpscout/beacon/a/c/e/j/a$c;->b:I

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/j/a$c;->c:Lcom/helpscout/beacon/a/c/e/j/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/helpscout/beacon/a/c/e/j/a;->a(Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;ZZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
