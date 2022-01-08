.class final Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView$h;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;->setupSearchView(Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;

.field final synthetic b:Lkotlin/jvm/functions/Function2;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView$h;->a:Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView$h;->b:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView$h;->b:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView$h;->a:Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;

    sget v2, Lcom/helpscout/beacon/ui/R$id;->answersSearchView:I

    invoke-virtual {v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;

    const-string v2, "answersSearchView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView$h;->a:Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;

    sget v1, Lcom/helpscout/beacon/ui/R$id;->answersSearchView:I

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->b(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView$h;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
