.class public Lim/imkey/imkeylibrary/device/Applet;
.super Ljava/lang/Object;
.source "Applet.java"


# static fields
.field public static final BTC_AID:Ljava/lang/String; = "695F627463"

.field public static final BTC_NAME:Ljava/lang/String; = "BTC"

.field public static final COSMOS_AID:Ljava/lang/String; = "695F636F736D6F73"

.field public static final COSMOS_NAME:Ljava/lang/String; = "COSMOS"

.field public static final EOS_AID:Ljava/lang/String; = "695F656F73"

.field public static final EOS_NAME:Ljava/lang/String; = "EOS"

.field public static final ETH_AID:Ljava/lang/String; = "695F657468"

.field public static final ETH_NAME:Ljava/lang/String; = "ETH"

.field public static final IMK_AID:Ljava/lang/String; = "695F696D6B"

.field public static final IMK_NAME:Ljava/lang/String; = "IMK"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appletName2instanceAid(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "COSMOS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "IMK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "ETH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "EOS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "BTC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_5

    if-eq p0, v4, :cond_4

    if-eq p0, v3, :cond_3

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    const-string p0, "695F636F736D6F73"

    return-object p0

    :cond_2
    const-string p0, "695F696D6B"

    return-object p0

    :cond_3
    const-string p0, "695F656F73"

    return-object p0

    :cond_4
    const-string p0, "695F657468"

    return-object p0

    :cond_5
    const-string p0, "695F627463"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10231 -> :sswitch_4
        0x10ce9 -> :sswitch_3
        0x10d79 -> :sswitch_2
        0x11ba7 -> :sswitch_1
        0x76d4d82a -> :sswitch_0
    .end sparse-switch
.end method

.method public static instanceAid2AppletName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "695F636F736D6F73"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "695F696D6B"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "695F657468"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "695F656F73"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "695F627463"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_5

    if-eq p0, v4, :cond_4

    if-eq p0, v3, :cond_3

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    const-string p0, "COSMOS"

    return-object p0

    :cond_2
    const-string p0, "IMK"

    return-object p0

    :cond_3
    const-string p0, "EOS"

    return-object p0

    :cond_4
    const-string p0, "ETH"

    return-object p0

    :cond_5
    const-string p0, "BTC"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1db2db36 -> :sswitch_4
        -0x1d88c561 -> :sswitch_3
        -0x1d8894ae -> :sswitch_2
        -0x1d506eef -> :sswitch_1
        0x27d6ab57 -> :sswitch_0
    .end sparse-switch
.end method
