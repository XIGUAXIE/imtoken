.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->e(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;

.field final synthetic b:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$g;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$g;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$g;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->c(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;)Lcom/helpscout/beacon/internal/presentation/common/m;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$g$a;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$g$a;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$g;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/m;->a(Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
