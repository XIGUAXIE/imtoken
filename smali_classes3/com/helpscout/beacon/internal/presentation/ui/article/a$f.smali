.class final Lcom/helpscout/beacon/internal/presentation/ui/article/a$f;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/article/a;->a()V
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
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/article/a;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/article/a;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/a$f;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/a$f;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/a;

    sget v1, Lcom/helpscout/beacon/ui/R$id;->articleClose:I

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/article/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->performClick()Z

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/a$f;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
