.class final Lcom/helpscout/beacon/internal/presentation/extensions/a/l$e;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Ljava/lang/Long;JZLkotlin/jvm/functions/Function0;)Landroid/view/ViewPropertyAnimator;
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
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lkotlin/jvm/functions/Function0;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Landroid/view/View;Lkotlin/jvm/functions/Function0;Z)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/l$e;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/l$e;->b:Lkotlin/jvm/functions/Function0;

    iput-boolean p3, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/l$e;->c:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/l$e;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    :cond_0
    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/l$e;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/l$e;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->c(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/l$e;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l$e;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
