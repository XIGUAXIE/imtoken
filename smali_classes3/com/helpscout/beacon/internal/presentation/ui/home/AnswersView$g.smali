.class final Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;->a(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;

.field final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView$g;->a:Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView$g;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView$g;->a:Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;->a(Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;)Lcom/helpscout/beacon/internal/presentation/ui/home/a;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView$g;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/n/c;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView$g;->a:Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;

    sget v1, Lcom/helpscout/beacon/ui/R$id;->answersArticleRecycler:I

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->scheduleLayoutAnimation()V

    return-void
.end method
