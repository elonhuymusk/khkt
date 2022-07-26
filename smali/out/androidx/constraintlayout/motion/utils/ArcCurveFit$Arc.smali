.class Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;
.super Ljava/lang/Object;
.source "ArcCurveFit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/utils/ArcCurveFit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Arc"
.end annotation


# static fields
.field private static final EPSILON:D = 0.001

.field private static final TAG:Ljava/lang/String; = "Arc"

.field private static ourPercent:[D


# instance fields
.field linear:Z

.field mArcDistance:D

.field mArcVelocity:D

.field mEllipseA:D

.field mEllipseB:D

.field mEllipseCenterX:D

.field mEllipseCenterY:D

.field mLut:[D

.field mOneOverDeltaTime:D

.field mTime1:D

.field mTime2:D

.field mTmpCosAngle:D

.field mTmpSinAngle:D

.field mVertical:Z

.field mX1:D

.field mX2:D

.field mY1:D

.field mY2:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 194
    const/16 v0, 0x5b

    new-array v0, v0, [D

    sput-object v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    return-void
.end method

.method constructor <init>(IDDDDDD)V
    .registers 36
    .param p1, "mode"    # I
    .param p2, "t1"    # D
    .param p4, "t2"    # D
    .param p6, "x1"    # D
    .param p8, "y1"    # D
    .param p10, "x2"    # D
    .param p12, "y2"    # D

    .line 212
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    move-wide/from16 v7, p6

    move-wide/from16 v5, p8

    move-wide/from16 v3, p10

    move-wide/from16 v1, p12

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, v9, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->linear:Z

    .line 213
    const/4 v15, 0x1

    if-ne v10, v15, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    iput-boolean v0, v9, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    .line 214
    iput-wide v11, v9, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    .line 215
    iput-wide v13, v9, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 216
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v18, v13, v11

    div-double v11, v16, v18

    iput-wide v11, v9, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    .line 217
    const/4 v0, 0x3

    if-ne v0, v10, :cond_2d

    .line 218
    iput-boolean v15, v9, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->linear:Z

    .line 220
    :cond_2d
    sub-double v11, v3, v7

    .line 221
    .local v11, "dx":D
    sub-double v13, v1, v5

    .line 222
    .local v13, "dy":D
    iget-boolean v0, v9, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-nez v0, :cond_9d

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    const-wide v18, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v16, v18

    if-ltz v0, :cond_9d

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    cmpg-double v0, v16, v18

    if-gez v0, :cond_52

    move-wide/from16 v20, v11

    move-wide/from16 v18, v13

    move-wide v12, v3

    move-wide v14, v5

    move-wide v10, v7

    goto :goto_a4

    .line 234
    :cond_52
    const/16 v0, 0x65

    new-array v0, v0, [D

    iput-object v0, v9, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mLut:[D

    .line 235
    iget-boolean v0, v9, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    const/16 v16, -0x1

    if-eqz v0, :cond_5f

    const/4 v15, -0x1

    :cond_5f
    int-to-double v1, v15

    mul-double v1, v1, v11

    iput-wide v1, v9, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    .line 236
    if-eqz v0, :cond_68

    const/4 v15, 0x1

    goto :goto_69

    :cond_68
    const/4 v15, -0x1

    :goto_69
    int-to-double v1, v15

    mul-double v1, v1, v13

    iput-wide v1, v9, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    .line 237
    if-eqz v0, :cond_72

    move-wide v1, v3

    goto :goto_73

    :cond_72
    move-wide v1, v7

    :goto_73
    iput-wide v1, v9, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    .line 238
    if-eqz v0, :cond_79

    move-wide v0, v5

    goto :goto_7b

    :cond_79
    move-wide/from16 v0, p12

    :goto_7b
    iput-wide v0, v9, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    .line 239
    move-object/from16 v0, p0

    move-wide v15, v11

    move-wide/from16 v10, p12

    .end local v11    # "dx":D
    .local v15, "dx":D
    move-wide/from16 v1, p6

    move-wide/from16 v18, v13

    move-wide v12, v3

    .end local v13    # "dy":D
    .local v18, "dy":D
    move-wide/from16 v3, p8

    move-wide/from16 v20, v15

    move-wide v14, v5

    .end local v15    # "dx":D
    .local v20, "dx":D
    move-wide/from16 v5, p10

    move-wide v10, v7

    move-wide/from16 v7, p12

    invoke-direct/range {v0 .. v8}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->buildTable(DDDD)V

    .line 240
    iget-wide v0, v9, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

    iget-wide v2, v9, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    mul-double v0, v0, v2

    iput-wide v0, v9, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    .line 241
    return-void

    .line 222
    .end local v18    # "dy":D
    .end local v20    # "dx":D
    .restart local v11    # "dx":D
    .restart local v13    # "dy":D
    :cond_9d
    move-wide/from16 v20, v11

    move-wide/from16 v18, v13

    move-wide v12, v3

    move-wide v14, v5

    move-wide v10, v7

    .line 223
    .end local v11    # "dx":D
    .end local v13    # "dy":D
    .restart local v18    # "dy":D
    .restart local v20    # "dx":D
    :goto_a4
    const/4 v0, 0x1

    iput-boolean v0, v9, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->linear:Z

    .line 224
    iput-wide v10, v9, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mX1:D

    .line 225
    iput-wide v12, v9, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mX2:D

    .line 226
    iput-wide v14, v9, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mY1:D

    .line 227
    move-wide/from16 v0, p12

    iput-wide v0, v9, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mY2:D

    .line 228
    move-wide/from16 v4, v18

    move-wide/from16 v2, v20

    .end local v18    # "dy":D
    .end local v20    # "dx":D
    .local v2, "dx":D
    .local v4, "dy":D
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    iput-wide v6, v9, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

    .line 229
    iget-wide v10, v9, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    mul-double v6, v6, v10

    iput-wide v6, v9, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    .line 230
    iget-wide v6, v9, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    iget-wide v10, v9, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    sub-double v16, v6, v10

    div-double v0, v2, v16

    iput-wide v0, v9, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    .line 231
    sub-double/2addr v6, v10

    div-double v0, v4, v6

    iput-wide v0, v9, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    .line 232
    return-void
.end method

.method private buildTable(DDDD)V
    .registers 36
    .param p1, "x1"    # D
    .param p3, "y1"    # D
    .param p5, "x2"    # D
    .param p7, "y2"    # D

    .line 307
    move-object/from16 v0, p0

    sub-double v1, p5, p1

    .line 308
    .local v1, "a":D
    sub-double v3, p3, p7

    .line 309
    .local v3, "b":D
    const-wide/16 v5, 0x0

    .local v5, "lx":D
    const-wide/16 v7, 0x0

    .line 310
    .local v7, "ly":D
    const-wide/16 v9, 0x0

    .line 311
    .local v9, "dist":D
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_d
    sget-object v12, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    array-length v13, v12

    if-ge v11, v13, :cond_55

    .line 312
    const-wide v13, 0x4056800000000000L    # 90.0

    move-wide v15, v9

    .end local v9    # "dist":D
    .local v15, "dist":D
    int-to-double v9, v11

    mul-double v9, v9, v13

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    int-to-double v12, v12

    div-double/2addr v9, v12

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    .line 313
    .local v9, "angle":D
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 314
    .local v12, "s":D
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    .line 315
    .local v17, "c":D
    mul-double v19, v1, v12

    .line 316
    .local v19, "px":D
    mul-double v21, v3, v17

    .line 317
    .local v21, "py":D
    if-lez v11, :cond_45

    .line 318
    move-wide/from16 v23, v1

    .end local v1    # "a":D
    .local v23, "a":D
    sub-double v1, v19, v5

    move-wide/from16 v25, v3

    .end local v3    # "b":D
    .local v25, "b":D
    sub-double v3, v21, v7

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    add-double/2addr v1, v15

    .line 319
    .end local v15    # "dist":D
    .local v1, "dist":D
    sget-object v3, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    aput-wide v1, v3, v11

    move-wide v15, v1

    goto :goto_49

    .line 317
    .end local v23    # "a":D
    .end local v25    # "b":D
    .local v1, "a":D
    .restart local v3    # "b":D
    .restart local v15    # "dist":D
    :cond_45
    move-wide/from16 v23, v1

    move-wide/from16 v25, v3

    .line 321
    .end local v1    # "a":D
    .end local v3    # "b":D
    .restart local v23    # "a":D
    .restart local v25    # "b":D
    :goto_49
    move-wide/from16 v5, v19

    .line 322
    move-wide/from16 v7, v21

    .line 311
    .end local v9    # "angle":D
    .end local v12    # "s":D
    .end local v17    # "c":D
    .end local v19    # "px":D
    .end local v21    # "py":D
    add-int/lit8 v11, v11, 0x1

    move-wide v9, v15

    move-wide/from16 v1, v23

    move-wide/from16 v3, v25

    goto :goto_d

    .end local v15    # "dist":D
    .end local v23    # "a":D
    .end local v25    # "b":D
    .restart local v1    # "a":D
    .restart local v3    # "b":D
    .local v9, "dist":D
    :cond_55
    move-wide/from16 v23, v1

    move-wide/from16 v25, v3

    move-wide v15, v9

    .line 325
    .end local v1    # "a":D
    .end local v3    # "b":D
    .end local v9    # "dist":D
    .end local v11    # "i":I
    .restart local v15    # "dist":D
    .restart local v23    # "a":D
    .restart local v25    # "b":D
    nop

    .end local v15    # "dist":D
    .restart local v9    # "dist":D
    iput-wide v9, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

    .line 327
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5e
    sget-object v2, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    array-length v3, v2

    if-ge v1, v3, :cond_6b

    .line 328
    aget-wide v3, v2, v1

    div-double/2addr v3, v9

    aput-wide v3, v2, v1

    .line 327
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 330
    .end local v1    # "i":I
    :cond_6b
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6c
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mLut:[D

    array-length v3, v2

    if-ge v1, v3, :cond_bc

    .line 331
    int-to-double v3, v1

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    int-to-double v11, v2

    div-double/2addr v3, v11

    .line 332
    .local v3, "pos":D
    sget-object v2, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v2

    .line 333
    .local v2, "index":I
    if-ltz v2, :cond_8c

    .line 334
    iget-object v11, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mLut:[D

    sget-object v12, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    div-int v12, v2, v12

    int-to-double v12, v12

    aput-wide v12, v11, v1

    goto :goto_b9

    .line 335
    :cond_8c
    const/4 v11, -0x1

    if-ne v2, v11, :cond_96

    .line 336
    iget-object v11, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mLut:[D

    const-wide/16 v12, 0x0

    aput-wide v12, v11, v1

    goto :goto_b9

    .line 338
    :cond_96
    neg-int v11, v2

    add-int/lit8 v11, v11, -0x2

    .line 339
    .local v11, "p1":I
    neg-int v12, v2

    add-int/lit8 v12, v12, -0x1

    .line 341
    .local v12, "p2":I
    int-to-double v13, v11

    sget-object v15, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    aget-wide v16, v15, v11

    sub-double v16, v3, v16

    aget-wide v18, v15, v12

    aget-wide v20, v15, v11

    sub-double v18, v18, v20

    div-double v16, v16, v18

    add-double v13, v13, v16

    array-length v15, v15

    add-int/lit8 v15, v15, -0x1

    move-wide/from16 v16, v3

    move v4, v2

    .end local v2    # "index":I
    .end local v3    # "pos":D
    .local v4, "index":I
    .local v16, "pos":D
    int-to-double v2, v15

    div-double/2addr v13, v2

    .line 343
    .local v13, "ans":D
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mLut:[D

    aput-wide v13, v2, v1

    .line 330
    .end local v4    # "index":I
    .end local v11    # "p1":I
    .end local v12    # "p2":I
    .end local v13    # "ans":D
    .end local v16    # "pos":D
    :goto_b9
    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    .line 346
    .end local v1    # "i":I
    :cond_bc
    return-void
.end method


# virtual methods
.method getDX()D
    .registers 9

    .line 260
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    mul-double v0, v0, v2

    .line 261
    .local v0, "vx":D
    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    neg-double v2, v2

    iget-wide v4, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    mul-double v2, v2, v4

    .line 262
    .local v2, "vy":D
    iget-wide v4, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    .line 263
    .local v4, "norm":D
    iget-boolean v6, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    if-eqz v6, :cond_1c

    neg-double v6, v0

    mul-double v6, v6, v4

    goto :goto_1e

    :cond_1c
    mul-double v6, v0, v4

    :goto_1e
    return-wide v6
.end method

.method getDY()D
    .registers 9

    .line 267
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    mul-double v0, v0, v2

    .line 268
    .local v0, "vx":D
    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    neg-double v2, v2

    iget-wide v4, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    mul-double v2, v2, v4

    .line 269
    .local v2, "vy":D
    iget-wide v4, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    .line 270
    .local v4, "norm":D
    iget-boolean v6, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    if-eqz v6, :cond_1c

    neg-double v6, v2

    mul-double v6, v6, v4

    goto :goto_1e

    :cond_1c
    mul-double v6, v2, v4

    :goto_1e
    return-wide v6
.end method

.method public getLinearDX(D)D
    .registers 5
    .param p1, "t"    # D

    .line 284
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    return-wide v0
.end method

.method public getLinearDY(D)D
    .registers 5
    .param p1, "t"    # D

    .line 288
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    return-wide v0
.end method

.method public getLinearX(D)D
    .registers 7
    .param p1, "t"    # D

    .line 274
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    sub-double v0, p1, v0

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    mul-double v0, v0, v2

    .line 275
    .end local p1    # "t":D
    .local v0, "t":D
    iget-wide p1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mX1:D

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mX2:D

    sub-double/2addr v2, p1

    mul-double v2, v2, v0

    add-double/2addr p1, v2

    return-wide p1
.end method

.method public getLinearY(D)D
    .registers 7
    .param p1, "t"    # D

    .line 279
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    sub-double v0, p1, v0

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    mul-double v0, v0, v2

    .line 280
    .end local p1    # "t":D
    .local v0, "t":D
    iget-wide p1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mY1:D

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mY2:D

    sub-double/2addr v2, p1

    mul-double v2, v2, v0

    add-double/2addr p1, v2

    return-wide p1
.end method

.method getX()D
    .registers 7

    .line 252
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    iget-wide v4, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method getY()D
    .registers 7

    .line 256
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    iget-wide v4, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method lookup(D)D
    .registers 15
    .param p1, "v"    # D

    .line 292
    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_7

    .line 293
    return-wide v0

    .line 295
    :cond_7
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_e

    .line 296
    return-wide v0

    .line 298
    :cond_e
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mLut:[D

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    int-to-double v1, v1

    mul-double v1, v1, p1

    .line 299
    .local v1, "pos":D
    double-to-int v3, v1

    .line 301
    .local v3, "iv":I
    double-to-int v4, v1

    int-to-double v4, v4

    sub-double v4, v1, v4

    .line 303
    .local v4, "off":D
    aget-wide v6, v0, v3

    add-int/lit8 v8, v3, 0x1

    aget-wide v8, v0, v8

    aget-wide v10, v0, v3

    sub-double/2addr v8, v10

    mul-double v8, v8, v4

    add-double/2addr v6, v8

    return-wide v6
.end method

.method setPoint(D)V
    .registers 9
    .param p1, "time"    # D

    .line 244
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    if-eqz v0, :cond_8

    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    sub-double/2addr v0, p1

    goto :goto_c

    :cond_8
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    sub-double v0, p1, v0

    :goto_c
    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    mul-double v0, v0, v2

    .line 245
    .local v0, "percent":D
    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->lookup(D)D

    move-result-wide v4

    mul-double v4, v4, v2

    .line 247
    .local v4, "angle":D
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iput-wide v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    .line 248
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iput-wide v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    .line 249
    return-void
.end method
