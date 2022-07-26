.class public final Lorg/tensorflow/lite/support/metadata/schema/ProcessUnitOptions;
.super Ljava/lang/Object;
.source "ProcessUnitOptions.java"


# static fields
.field public static final BertTokenizerOptions:B = 0x4t

.field public static final NONE:B = 0x0t

.field public static final NormalizationOptions:B = 0x1t

.field public static final RegexTokenizerOptions:B = 0x6t

.field public static final ScoreCalibrationOptions:B = 0x2t

.field public static final ScoreThresholdingOptions:B = 0x3t

.field public static final SentencePieceTokenizerOptions:B = 0x5t

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 15
    const-string v0, "NONE"

    const-string v1, "NormalizationOptions"

    const-string v2, "ScoreCalibrationOptions"

    const-string v3, "ScoreThresholdingOptions"

    const-string v4, "BertTokenizerOptions"

    const-string v5, "SentencePieceTokenizerOptions"

    const-string v6, "RegexTokenizerOptions"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/tensorflow/lite/support/metadata/schema/ProcessUnitOptions;->names:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .registers 2
    .param p0, "e"    # I

    .line 17
    sget-object v0, Lorg/tensorflow/lite/support/metadata/schema/ProcessUnitOptions;->names:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
