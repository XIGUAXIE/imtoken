.class final Lcom/sensorsdata/analytics/android/sdk/util/ChannelUtils$2;
.super Ljava/util/HashMap;
.source "ChannelUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/util/ChannelUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "SENSORS_ANALYTICS_UTM_SOURCE"

    const-string v1, "utm_source"

    .line 66
    invoke-virtual {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/ChannelUtils$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SENSORS_ANALYTICS_UTM_MEDIUM"

    const-string v1, "utm_medium"

    .line 67
    invoke-virtual {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/ChannelUtils$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SENSORS_ANALYTICS_UTM_TERM"

    const-string v1, "utm_term"

    .line 68
    invoke-virtual {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/ChannelUtils$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SENSORS_ANALYTICS_UTM_CONTENT"

    const-string v1, "utm_content"

    .line 69
    invoke-virtual {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/ChannelUtils$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SENSORS_ANALYTICS_UTM_CAMPAIGN"

    const-string v1, "utm_campaign"

    .line 70
    invoke-virtual {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/ChannelUtils$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
