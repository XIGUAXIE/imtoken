.class public Lorg/apache/commons/collections/FunctorException;
.super Ljava/lang/RuntimeException;
.source "FunctorException.java"


# static fields
.field private static final JDK_SUPPORTS_NESTED:Z

.field static synthetic class$java$lang$Throwable:Ljava/lang/Class;


# instance fields
.field private final rootCause:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    .line 41
    :try_start_0
    sget-object v1, Lorg/apache/commons/collections/FunctorException;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "java.lang.Throwable"

    invoke-static {v1}, Lorg/apache/commons/collections/FunctorException;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/collections/FunctorException;->class$java$lang$Throwable:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/commons/collections/FunctorException;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_0
    const-string v2, "getCause"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    .line 46
    :catch_0
    sput-boolean v0, Lorg/apache/commons/collections/FunctorException;->JDK_SUPPORTS_NESTED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lorg/apache/commons/collections/FunctorException;->rootCause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 71
    iput-object p1, p0, Lorg/apache/commons/collections/FunctorException;->rootCause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 96
    iput-object p2, p0, Lorg/apache/commons/collections/FunctorException;->rootCause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 83
    iput-object p1, p0, Lorg/apache/commons/collections/FunctorException;->rootCause:Ljava/lang/Throwable;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 41
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/apache/commons/collections/FunctorException;->rootCause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public printStackTrace()V
    .locals 1

    .line 112
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FunctorException;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 2

    .line 121
    monitor-enter p1

    .line 122
    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 123
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FunctorException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 125
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 126
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1

    .line 135
    monitor-enter p1

    .line 136
    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 137
    iget-object v0, p0, Lorg/apache/commons/collections/FunctorException;->rootCause:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/apache/commons/collections/FunctorException;->JDK_SUPPORTS_NESTED:Z

    if-nez v0, :cond_0

    const-string v0, "Caused by: "

    .line 138
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lorg/apache/commons/collections/FunctorException;->rootCause:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 141
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
