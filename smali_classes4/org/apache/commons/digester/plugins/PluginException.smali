.class public Lorg/apache/commons/digester/plugins/PluginException;
.super Ljava/lang/Exception;
.source "PluginException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lorg/apache/commons/digester/plugins/PluginException;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lorg/apache/commons/digester/plugins/PluginException;-><init>(Ljava/lang/String;)V

    .line 54
    iput-object p2, p0, Lorg/apache/commons/digester/plugins/PluginException;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/digester/plugins/PluginException;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lorg/apache/commons/digester/plugins/PluginException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
