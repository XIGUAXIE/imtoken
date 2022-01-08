.class public Lorg/bitcoinj/utils/BriefLogFormatter;
.super Ljava/util/logging/Formatter;
.source "BriefLogFormatter.java"


# static fields
.field private static logger:Ljava/util/logging/Logger;

.field private static final messageFormat:Ljava/text/MessageFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "{3,date,HH:mm:ss} {0} {1}.{2}: {4}\n{5}"

    invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bitcoinj/utils/BriefLogFormatter;->messageFormat:Ljava/text/MessageFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 2

    const-string v0, ""

    .line 39
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/utils/BriefLogFormatter;->logger:Ljava/util/logging/Logger;

    .line 40
    invoke-virtual {v0}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v0

    .line 42
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 43
    aget-object v0, v0, v1

    new-instance v1, Lorg/bitcoinj/utils/BriefLogFormatter;

    invoke-direct {v1}, Lorg/bitcoinj/utils/BriefLogFormatter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/logging/Handler;->setFormatter(Ljava/util/logging/Formatter;)V

    :cond_0
    return-void
.end method

.method public static initVerbose()V
    .locals 3

    .line 47
    invoke-static {}, Lorg/bitcoinj/utils/BriefLogFormatter;->init()V

    .line 48
    sget-object v0, Lorg/bitcoinj/utils/BriefLogFormatter;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 49
    sget-object v0, Lorg/bitcoinj/utils/BriefLogFormatter;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "test"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public static initWithSilentBitcoinJ()V
    .locals 2

    .line 53
    invoke-static {}, Lorg/bitcoinj/utils/BriefLogFormatter;->init()V

    const-string v0, "org.bitcoinj"

    .line 54
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    return-void
.end method


# virtual methods
.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 60
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThreadID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 61
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 65
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 66
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 67
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 68
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v1

    const/4 v2, 0x5

    if-eqz v1, :cond_0

    .line 69
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 70
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object p1

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    goto :goto_0

    :cond_0
    const-string p1, ""

    aput-object p1, v0, v2

    .line 75
    :goto_0
    sget-object p1, Lorg/bitcoinj/utils/BriefLogFormatter;->messageFormat:Ljava/text/MessageFormat;

    invoke-virtual {p1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
