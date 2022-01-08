.class public final Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a;
.super Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final b:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "+",
            "Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/helpscout/beacon/internal/presentation/common/d;

.field private d:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/view/View;Lkotlin/jvm/functions/Function2;Lcom/helpscout/beacon/internal/presentation/common/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/helpscout/beacon/internal/presentation/common/d;",
            ")V"
        }
    .end annotation

    const-string v0, "containerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showMoreClicked"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringResolver"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a;-><init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a;->b:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a;->c:Lcom/helpscout/beacon/internal/presentation/common/d;

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a;)Lkotlin/jvm/functions/Function2;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a;->b:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a;->d:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a;->d:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-interface {p0}, Lkotlinx/android/extensions/LayoutContainer;->getContainerView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public a(Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemClick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/helpscout/beacon/ui/R$id;->showMore:I

    invoke-virtual {p0, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a;->a(I)Landroid/view/View;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/widget/Button;

    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a;->c:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/common/d;->W()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string p2, "showMore.apply {\n       \u2026wMore()\n                }"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a$a;

    invoke-direct {v3, p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a$a;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a;Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;)V

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a;->a(Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
