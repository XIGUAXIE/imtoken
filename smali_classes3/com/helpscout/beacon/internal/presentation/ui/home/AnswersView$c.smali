.class public final Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView$c;
.super Lcom/helpscout/beacon/internal/presentation/common/n/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;->a(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;

.field final synthetic i:Lkotlin/jvm/functions/Function2;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;Lkotlin/jvm/functions/Function2;Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2;",
            "Landroidx/recyclerview/widget/LinearLayoutManager;",
            "Landroidx/recyclerview/widget/LinearLayoutManager;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView$c;->h:Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView$c;->i:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p4}, Lcom/helpscout/beacon/internal/presentation/common/n/e;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    return-void
.end method


# virtual methods
.method public a(IILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    const-string p2, "view"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView$c;->h:Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;

    sget p3, Lcom/helpscout/beacon/ui/R$id;->answersSearchView:I

    invoke-virtual {p2, p3}, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;->a(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;

    const-string p3, "answersSearchView"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView$c;->i:Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
