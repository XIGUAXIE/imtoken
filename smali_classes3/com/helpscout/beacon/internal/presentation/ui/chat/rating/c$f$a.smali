.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f;->a()Landroid/view/View$OnLayoutChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p9, p5

    invoke-static {p9}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_0

    if-eqz p1, :cond_0

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f$a$a;

    invoke-direct {p2, p0, p9, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f$a$a;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f$a;ILandroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
