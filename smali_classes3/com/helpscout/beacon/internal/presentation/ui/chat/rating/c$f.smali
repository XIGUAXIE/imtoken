.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/View$OnLayoutChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View$OnLayoutChangeListener;
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f$a;

    invoke-direct {v0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f$a;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f;->a()Landroid/view/View$OnLayoutChangeListener;

    move-result-object v0

    return-object v0
.end method
