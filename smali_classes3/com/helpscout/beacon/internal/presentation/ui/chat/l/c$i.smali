.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c$i;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c$i;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;)Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
