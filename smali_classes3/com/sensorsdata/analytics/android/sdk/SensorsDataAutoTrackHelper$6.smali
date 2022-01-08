.class final Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$6;
.super Ljava/lang/Object;
.source "SensorsDataAutoTrackHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->showOpenVisualizedAutoTrackDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$featureCode:Ljava/lang/String;

.field final synthetic val$postUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1758
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$6;->val$context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$6;->val$featureCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$6;->val$postUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1761
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/VisualizedAutoTrackService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/VisualizedAutoTrackService;

    move-result-object p1

    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$6;->val$context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$6;->val$featureCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$6;->val$postUrl:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/VisualizedAutoTrackService;->start(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
