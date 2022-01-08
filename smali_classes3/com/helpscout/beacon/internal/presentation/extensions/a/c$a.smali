.class public final Lcom/helpscout/beacon/internal/presentation/extensions/a/c$a;
.super Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/extensions/a/c;->a(Landroidx/recyclerview/widget/RecyclerView;Lcom/helpscout/beacon/internal/presentation/common/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/common/b;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/common/b;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/c$a;->a:Lcom/helpscout/beacon/internal/presentation/common/b;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected createEdgeEffect(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/c$a;->a:Lcom/helpscout/beacon/internal/presentation/common/b;

    invoke-interface {p1}, Lcom/helpscout/beacon/internal/presentation/common/b;->a()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    return-object p2
.end method
