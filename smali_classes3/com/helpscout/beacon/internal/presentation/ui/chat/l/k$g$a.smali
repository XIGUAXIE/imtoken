.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$g$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$g;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$g;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$g;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$g$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$g$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$g;

    iget-object v0, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$g;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->b(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$g$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$g;

    iget-object v1, v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$g;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$g$a;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
