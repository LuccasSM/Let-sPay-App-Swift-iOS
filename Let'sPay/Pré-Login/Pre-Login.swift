//
//  Pre-Login.swift
//  Let'sPay
//
//  Created by Luccas Santana Marinho on 15/02/22.
//

import UIKit

class ScreenBlockBackground: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .blueLetsPay
        NotificationCenter.default.addObserver(self, selector: #selector(exitBG), name: UIApplication.didBecomeActiveNotification, object: .none)
        NotificationCenter.default.addObserver(self, selector: #selector(enterBG), name: UIApplication.willResignActiveNotification, object: .none)
        
        //MARK: --- View's entrando em background
        
        let title = UILabel(frame: .zero)
        title.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(title)
        title.text = "Let'sPay"
        title.textColor = .white
        title.font = UIFont.init(name: "GlacialIndifference-Bold", size: 36)
        title.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        title.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) não foi implementado")
    }
    
    // MARK: --- Chamando as funções de entrar e sair background
    
    @objc func enterBG() {
        self.isHidden = false
    }
        
    @objc func exitBG() {
        self.isHidden = true
    }
}

class Pre_Login: UIViewController {

    // MARK: --- Componentes Pré Login

    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.addSublayer(shapeLayer)
        startDisplayLink() // MARK: --- Chamando a ondinha
        setupViews()
        
        //            teste.widthAnchor.constraint(equalTo: self.uiViewBlue.widthAnchor, multiplier: 0.28/5),
        //            teste.heightAnchor.constraint(equalTo: self.uiViewBlue.heightAnchor, multiplier: 0.27/5),
        
        NSLayoutConstraint.activate([
            uiViewBlue.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            uiViewBlue.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            uiViewBlue.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            uiViewBlue.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),
            
            titlePreLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titlePreLogin.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.17),
            
            image.centerXAnchor.constraint(equalTo: uiViewBlue.centerXAnchor),
            image.centerYAnchor.constraint(equalTo: uiViewBlue.centerYAnchor, constant: 30),
            image.trailingAnchor.constraint(equalTo: uiViewBlue.trailingAnchor, constant: -5),
            image.widthAnchor.constraint(equalTo: uiViewBlue.widthAnchor, multiplier: 1.70/5),
            image.heightAnchor.constraint(equalTo: uiViewBlue.heightAnchor, multiplier: 0.365),
            
            teste.topAnchor.constraint(equalTo: uiViewBlue.safeAreaLayoutGuide.topAnchor, constant: 18),
            teste.trailingAnchor.constraint(equalTo: uiViewBlue.trailingAnchor, constant: -20),
            teste.leadingAnchor.constraint(equalTo: uiViewBlue.leadingAnchor),
            teste.centerYAnchor.constraint(equalTo: uiViewBlue.centerYAnchor, constant: 8.5),
            teste.widthAnchor.constraint(equalToConstant: 30),
            teste.heightAnchor.constraint(equalToConstant: 30),
            
            titleAreaBlue.centerXAnchor.constraint(equalTo: uiViewBlue.centerXAnchor),
            titleAreaBlue.centerYAnchor.constraint(equalTo: uiViewBlue.centerYAnchor, constant: 30),
            titleAreaBlue.leadingAnchor.constraint(equalTo: uiViewBlue.leadingAnchor, constant: 20),
            
            buttonBlue.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 60),
            buttonBlue.heightAnchor.constraint(equalToConstant: 60),
            buttonBlue.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonBlue.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -110),
            
            buttonTransparent.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 60),
            buttonTransparent.heightAnchor.constraint(equalToConstant: 60),
            buttonTransparent.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonTransparent.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
        ])
        
        let screenBlockBackground = ScreenBlockBackground(frame: view.frame)
        self.view.addSubview(screenBlockBackground)
        
        screenBlockBackground.isHidden = true
    }
    
    // MARK: --- Criando as Views da Pré Login
    
    private lazy var uiViewBlue: UIView = {
        let viewGradient = UIView()
        viewGradient.backgroundColor = .blueLetsPay
        viewGradient.translatesAutoresizingMaskIntoConstraints = false
        return viewGradient
    }()
    
    private lazy var titlePreLogin: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
//        title.text = "Let'sPay"
        title.textColor = .white
        title.font = UIFont.init(name: "GlacialIndifference-Bold", size: 36)
        return title
    }()
    
    private lazy var teste: UIButton = {
        let image = UIButton()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.setImage(UIImage(named: "interrogation"), for: .normal)
        return image
    }()
    
    private lazy var image: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "image-emoji")
        return image
    }()
    
    private lazy var titleAreaBlue: UILabel = {
        let titleAreaBlue = UILabel()
        titleAreaBlue.translatesAutoresizingMaskIntoConstraints = false
        titleAreaBlue.font = UIFont.init(name: "KabrioSoft-Regular", size: 22)
        titleAreaBlue.textColor = .white
        titleAreaBlue.numberOfLines = 0
//        let attributedString = NSMutableAttributedString(string: "Como nós \nVocê nunca viu \nLet'sPay, sua nova \nForma de pagamento")
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 10
//        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, attributedString.length))
//        titleAreaBlue.attributedText = attributedString
        return titleAreaBlue
    }()
    
    private lazy var buttonBlue: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blueLetsPay
        button.setTitle("Acessar sua conta", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.init(name: "Sebino-Regular", size: 16)
        button.layer.cornerRadius = 10
        return button
    }()
    
    private lazy var buttonTransparent: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.setTitle("Criar nova conta", for: .normal)
        button.setTitleColor(.blueLetsPay, for: .normal)
        button.titleLabel?.font = UIFont.init(name: "Sebino-Regular", size: 16)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = CGColor(red: 78/255, green: 133/255, blue: 255/255, alpha: 1.0)
        return button
    }()
    
    // MARK: --- Setando as Views da Pré Login
    
    func setupViews() {
        self.view.addSubview(uiViewBlue)
        self.view.addSubview(titlePreLogin)
        self.uiViewBlue.addSubview(teste)
        self.uiViewBlue.addSubview(image)
        self.uiViewBlue.addSubview(titleAreaBlue)
        self.view.addSubview(buttonBlue)
        self.view.addSubview(buttonTransparent)
    }
    
    // MARK: --- Theme Light: Hrs Wifi 4G Bateria
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // MARK: --- Intervalo de tempos das animações
    
    private weak var displayLink: CADisplayLink?
    private var startTime: CFTimeInterval = 0

    // MARK: --- O `CAShapeLayer` que conterá o caminho animado

    private let shapeLayer: CAShapeLayer = {
        let shapeLayer = CAShapeLayer()
        shapeLayer.strokeColor = UIColor.blueLetsPay.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineWidth = 20
        return shapeLayer
    }()

    // MARK: --- Pare quando ele desaparecer, certifique-se de fazer isso porque o link de exibição mantém uma referência forte ao seu `destino` e não queremos um ciclo de referência forte.

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        stopDisplayLink()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setGradientBackground()
    }

    // MARK: --- Inicia o link de exibição

    private func startDisplayLink() {
        startTime = CACurrentMediaTime()
        self.displayLink?.invalidate()
        let displayLink = CADisplayLink(target: self, selector:#selector(handleDisplayLink(_:)))
        displayLink.add(to: .main, forMode: .common)
        self.displayLink = displayLink
    }

    // MARK: --- Para o link de exibição

    private func stopDisplayLink() {
        displayLink?.invalidate()
    }
        
    // MARK: --- Manipule o temporizador de link de exibição. Parâmetro displayLink: O link de exibição.

    @objc func handleDisplayLink(_ displayLink: CADisplayLink) {
        let elapsed = CACurrentMediaTime() - startTime
        shapeLayer.path = wave(at: elapsed).cgPath
    }

    // MARK: --- Cria a onda em um determinado tempo decorrido. Você deve personalizar isso como achar melhor. Parâmetro decorrido: quantos segundos se passaram. Retorna: O `UIBezierPath` para um determinado ponto de tempo.

    private func wave(at elapsed: Double) -> UIBezierPath {
        let elapsed = CGFloat(elapsed)
        let centerY = view.bounds.midY
        let amplitude = 10 - abs(elapsed.remainder(dividingBy: 1)) * 10

        func f(_ x: CGFloat) -> CGFloat {
            return sin((x + elapsed) * 2 * .pi) * amplitude + centerY
        }

        let path = UIBezierPath()
        let steps = Int(view.bounds.width / 10)

        path.move(to: CGPoint(x: 0, y: f(0)))
        for step in 1 ... steps {
            let x = CGFloat(step) / CGFloat(steps)
            path.addLine(to: CGPoint(x: x * view.bounds.width, y: f(x)))
        }

        return path
    }
    
    // MARK: --- Cor gradient background azul
    
    func setGradientBackground() {
        let colorTop =  UIColor(red: 78.0/255.0, green: 133.0/255.0, blue: 255.0/255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 220.0/255.0, green: 241.0/255.0, blue: 249.0/255.0, alpha: 1.0).cgColor
                    
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
                
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
