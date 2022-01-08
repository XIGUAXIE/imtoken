.class final Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity$h;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity$h;->a:Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity$h;->a:Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/a/d/c/d$c;

    invoke-direct {v1, p1}, Lcom/helpscout/beacon/a/d/c/d$c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity$h;->a(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
