.class final Lcom/helpscout/beacon/internal/presentation/ui/article/a$e;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/article/a;->a(Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/article/a;

.field final synthetic b:Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/article/a;Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/a$e;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/a;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/a$e;->b:Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 7

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/a$e;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/a;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/a;->d(Lcom/helpscout/beacon/internal/presentation/ui/article/a;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/a$e;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/a;

    sget v0, Lcom/helpscout/beacon/ui/R$id;->articleWebView:I

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/a;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/webkit/WebView;->scrollTo(II)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/a$e;->b:Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;->getDeviceHasLeftFeedback()Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/a$e;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/a;

    sget v0, Lcom/helpscout/beacon/ui/R$id;->articleContainer:I

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/a;->a(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    const-string p1, "articleContainer"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, -0x4a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/a$e;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/a;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/a;->e(Lcom/helpscout/beacon/internal/presentation/ui/article/a;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/a$e;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/a;

    sget v0, Lcom/helpscout/beacon/ui/R$id;->ratingView:I

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/a;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;

    const-string v0, "ratingView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    :goto_0
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/a$e;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/a;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/a;->c(Lcom/helpscout/beacon/internal/presentation/ui/article/a;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/a$e;->a(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
