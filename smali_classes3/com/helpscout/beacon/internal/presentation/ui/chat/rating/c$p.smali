.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$p;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/text/Editable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$p;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/text/Editable;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$p;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    sget v1, Lcom/helpscout/beacon/ui/R$id;->ratingFeedbackReadOnly:I

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "ratingFeedbackReadOnly"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$p;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/e$e;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/e$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/common/mvi/MviViewModel;->interpret(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/text/Editable;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$p;->a(Landroid/text/Editable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
