.class public final Lcom/meituan/android/walle/WalleChannelReader;
.super Ljava/lang/Object;
.source "WalleChannelReader.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 68
    invoke-static {p0}, Lcom/meituan/android/walle/WalleChannelReader;->getChannelInfoMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 72
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static getApkPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 94
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 98
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-static {p0, v0}, Lcom/meituan/android/walle/WalleChannelReader;->getChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/meituan/android/walle/WalleChannelReader;->getChannelInfo(Landroid/content/Context;)Lcom/meituan/android/walle/ChannelInfo;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p1

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/meituan/android/walle/ChannelInfo;->getChannel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getChannelInfo(Landroid/content/Context;)Lcom/meituan/android/walle/ChannelInfo;
    .locals 1

    .line 52
    invoke-static {p0}, Lcom/meituan/android/walle/WalleChannelReader;->getApkPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 53
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/meituan/android/walle/ChannelReader;->get(Ljava/io/File;)Lcom/meituan/android/walle/ChannelInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getChannelInfoMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    invoke-static {p0}, Lcom/meituan/android/walle/WalleChannelReader;->getApkPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 84
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 87
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/meituan/android/walle/ChannelReader;->getMap(Ljava/io/File;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
