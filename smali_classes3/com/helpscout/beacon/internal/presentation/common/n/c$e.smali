.class public final Lcom/helpscout/beacon/internal/presentation/common/n/c$e;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/common/n/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field private final a:Landroid/widget/ProgressBar;

.field private final b:Lcom/helpscout/beacon/internal/presentation/common/b;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/helpscout/beacon/internal/presentation/common/b;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beaconColors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/n/c$e;->b:Lcom/helpscout/beacon/internal/presentation/common/b;

    sget p2, Lcom/helpscout/beacon/ui/R$id;->beacon_list_loading:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "view.findViewById(R.id.beacon_list_loading)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/c$e;->a:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/c$e;->a:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/c$e;->a:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/c$e;->b:Lcom/helpscout/beacon/internal/presentation/common/b;

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/c;->a(Landroid/widget/ProgressBar;Lcom/helpscout/beacon/internal/presentation/common/b;)V

    return-void
.end method
