.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->c(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;

.field final synthetic b:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$e;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$e;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$e;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->b()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$e;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
